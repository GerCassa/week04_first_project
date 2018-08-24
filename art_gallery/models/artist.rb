require_relative('../db/sql_runner')

class Artist

  attr_reader :id, :first_name, :last_name, :bio, :style, :gallery_id

  def initialize(info)
    @id = info["id"].to_i
    @first_name = info["first_name"]
    @last_name = info["last_name"]
    @style = info["style"]
    @bio = info["bio"]
    @gallery_id = info["gallery_id"].to_i
  end

  def full_name()
  return "#{@first_name} #{@last_name}"
  end

  def save()
    sql = "INSERT INTO artists
    ( first_name,
      last_name,
      bio,
      style
      gallery_id )
      VALUES
      ($1, $2, $3, $4, $5)
      RETURNING *"
      values = [@first_name, @last_name, @style, @bio, @gallery_id]
      artist_info = SqlRunner.run(sql, values)
      @id = artist_info.first()["id"].to_i
  end

  def update()
    sql = "UPDATE artists SET
    ( first_name,
      last_name,
      bio,
      style,
      gallery_id )
      =
      ($1, $2, $3, $4, $5)
      WHERE id = $6"
    values = [@first_name, @last_name, @bio, @style, @gallery_id, @id]
    SqlRunner.run(sql, values)
  end




end
