require_relative('../db/sql_runner')

class Artist

  attr_reader :id, :first_name, :last_name, :bio, :style

  def initialize(info)
    @id = info["id"].to_i
    @first_name = info["first_name"]
    @last_name = info["last_name"]
    @bio = info["bio"]
    @style = info["style"]
  end

  def full_name()
  return "#{@first_name} #{@last_name}"
  end

end
