class Rubygem < ActiveRecord::Base

  label :name
  scope :by_downloads, order('downloads desc')
  has_many :authorships
  has_many :authors, :class_name => 'User', :through => :authorships

  # HERE WE TRY TO GET RUBYGEM USERS
  has_many :dependents, :class_name => 'Dependency', :foreign_key => :rubygem_id
  has_many :repositories, :through => :dependents
  
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
