require_relative('../db/sql_runner')

class Artist

  attr_reader :id, :first_name, :last_name, :bio, :style

  def initialize(info)
    @id = info["id"].to_i
    @first_name = info["first_name"]
    @last_name = info["last_name"]
    @style = info["style"]
    @bio = info["bio"]
  end

  def full_name()
  return "#{@first_name} #{@last_name}"
  end

  def save
    sql = "INSERT INTO artists
    ( first_name,
      last_name,
      bio,
      style )
      VALUES
      ($1, $2, $3, $4)
      RETURNING *"
      values = [@first_name, @last_name, @style, @bio]
      artist_info = SqlRunner.run(sql, values)
      @id = artist_info.first()["id"].to_i
  end


end
