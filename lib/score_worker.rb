class ScoreWorker
  def self.perform
    ActiveRecord::Base.connection.execute %(
    UPDATE users SET score = (SELECT score FROM scores WHERE scores.id = users.id)::int;
    UPDATE users SET level = log(score)::int; 
    )
  end
end