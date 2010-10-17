class Rubygem < ActiveRecord::Base

  label :name
  scope :by_downloads, order('downloads desc')
  has_many :authorships
  has_many :authors, :class_name => 'User', :through => :authorships

  # HERE WE TRY TO GET RUBYGEM USERS
  has_many :dependents, :class_name => 'Dependency', :foreign_key => :rubygem_id
  has_many :repositories, :through => :dependents
  
  scope :by_similarity, (lambda do |query|
    where("(name % ? OR email % ? OR login % ?)", query, query, query).order("greatest(similarity(name, quote_literal('#{query}')), similarity(email, quote_literal('#{query}')), similarity(login, quote_literal('#{query}'))) DESC")
  end)

  scope :rank_by_similarity, (lambda do |query|
    by_similarity(query).select("'user' AS entry_type, login AS key, name AS label, gravatar_id, greatest(similarity(name, quote_literal('#{query}')), similarity(email, quote_literal('#{query}')), similarity(login, quote_literal('#{query}'))) AS rank")
  end)

  scope :used_by, (lambda do |u| select("DISTINCT rubygems.*").joins("JOIN dependencies ON dependencies.rubygem_id = rubygems.id JOIN repositories ON repositories.id = dependencies.repository_id JOIN users ON repositories.user_id = users.id ").where("users.id = ?", u.id)
  end)
  
  def railsplugins_url
    "http://www.railsplugins.org/plugins/%s" % railsplugins_id
  end

  def users
    User.who_use(self).all
  end

  def to_param
    name
  end

  serialize :indicators
  def uri
    @uri ||= homepage_uri || wiki_uri || project_uri
  end

  def update_authorship
    new_authors = authors_names.split(",").map{|a| a.strip }
    old_authors = authorships.map{|a| a.author_name }
    authors_to_be_removed = old_authors - new_authors
    authors_to_be_created = new_authors - old_authors
    # First we remove only the authors that are no longer in the gem (to preserve already existing associations)
    authorships.each do |a|
      a.destroy if authors_to_be_removed.include? a.author_name
    end
    # Then we insert only new authors
    authors_to_be_created.each do |name|
      authorships.create :author_name => name
    end
  end
protected
  before_validation :search, :on => :create
  after_create :work
  after_create :update_authorship

  def search
    RubygemWorker.perform_initially(self)
  end

  def work
    Resque.enqueue(RailspluginsWorker, self.id)
  end
end
