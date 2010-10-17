class Search < ActiveRecord::Base
  @@threshold = nil
  def self.similarity_threshold
    @@threshold
  end

  def self.set_similarity_threshold threshold
    return nil unless threshold.instance_of?(Fixnum) or threshold.instance_of?(Float)
    @@threshold = threshold
    connection.execute("SELECT set_limit('#{@@threshold}');")
  end

  def self.results_for(query)
    users = self.query_model(User, query)
    rubygems = self.query_model(Rubygem, query)
    companies = self.query_model(Company, query)
    teams = self.query_model(Team, query)
    locations = connection.execute(User.rank_by_location_similarity(query).to_sql).map
    {:users => users, :rubygems => rubygems, :companies => companies, :teams => teams, :locations => locations }
  end

  protected
  def self.query_model(model, query)
    sql = model.rank_by_similarity(query).to_sql
    connection.execute(sql).map
  end
end
