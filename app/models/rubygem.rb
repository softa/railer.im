class Rubygem < ActiveRecord::Base
  label :name
  scope :by_downloads, order('downloads desc')
  serialize :indicators
  def uri
    @uri ||= homepage_uri || wiki_uri || project_uri
  end

protected

  before_validation :search, :on => :create
  def search
    RubygemWorker.perform_initially(self)
  end

end