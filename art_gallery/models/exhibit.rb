require_relative('../db/sql_runner')

class Exhibit

  attr_reader :id
  attr_accessor :name, :date_created, :format, :style, :artist_id

  def initialize(info)
    @id = info["id"].to_i
    @name = info["name"]
    @date_created = info["date_created"]
    @format = info["format"]
    @style = info["style"]
    @artist_id = info["artist_id"].to_i
  end

  def save()
    sql = "INSERT INTO exhibits
    ( name,
      date_created,
      format,
      style,
      artist_id )
    VALUES
    ( $1, $2, $3, $4, $5)
    RETURNING *"
    values = [@name, @date_created,@format, @style, @artist_id]
    exhibit_info = SqlRunner.run(sql, values)
    @id = exhibit_info.first()["id"].to_i
  end

  def update()
    sql = "UPDATE artist SET
    ( name,
      date_created,
      format,
      style,
      artist_id )
      =
      ($1, $2, $3, $4, $5 )
      WHERE id = $6"
    values = [@name, @date_created,@format, @style, @artist_id, @id]
    SqlRunner.run[sql, values]
  end


end
