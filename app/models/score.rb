class Score < ActiveRecord::Base
  def self.find id
    result = connection.execute("SELECT score FROM scores WHERE id = #{id}")
    Score.new result.first
  end
  def level
    Math.log(score+1).to_i
  end
end