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
    sql = User.rank_by_similarity(query).to_sql
    users = connection.execute(sql).map
    {:users => users}
  end
end
