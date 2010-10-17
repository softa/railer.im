class ScoreWorker
  def self.perform
    ActiveRecord::Base.connection.execute %(
    UPDATE users SET score = coalesce((SELECT score FROM scores WHERE scores.id = users.id)::int,0);
    UPDATE users SET level = log(score+1)::int; 
    )
  end
end