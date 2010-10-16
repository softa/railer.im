class Rubygem < ActiveRecord::Base
  label :name
  scope :by_downloads, order('downloads desc')

  def uri
    @uri ||= homepage_uri || project_uri || wiki_uri
  end

end