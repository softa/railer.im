class Rubygem < ActiveRecord::Base
  label :name
  scope :by_downloads, order('downloads desc')
  serialize :indicators
  def uri
    @uri ||= homepage_uri || wiki_uri || project_uri
  end

protected

  before_validation :search, :on => :create
  after_create :work
  def search
    RubygemWorker.perform_initially(self)
  end

  def work
    Resque.enqueue(RailspluginsWorker, self.id)
  end

end