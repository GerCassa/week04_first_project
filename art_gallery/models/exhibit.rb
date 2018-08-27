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

  def delete()
    sql = "DELETE FROM exhibits WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM exhibits"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM exhibits"
    exhibits = SqlRunner.run(sql)
    result = exhibits.map {|exhibit| Exhibit.new(exhibit)}
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM exhibits WHERE id = $1"
    values = [id]
    exhibit = SqlRunner.run(sql, values)
    result = Exhibit.new(exhibit.first)
    return result
  end

  def self.find_name(name)
    sql = "SELECT * FROM exhibits WHERE name = $1"
    values = [name]
    exhibit = SqlRunner.run(sql, values)
    result = Exhibit.new(exhibit.first)
    return result
  end

  def self.find_by_year(date_created)
    sql = "SELECT * FROM exhibits WHERE date_created = $1"
    values = [date_created]
    exhibit = SqlRunner.run(sql, values)
    result = Exhibit.new(exhibit.first)
    return result
  end

  def self.find_by_artist(artist_id)
    sql = "SELECT * FROM exhibits WHERE artist_id = $1"
    values = [artist_id]
    exhibit = SqlRunner.run(sql, values)
    result = Exhibit.new(exhibit.first)
    return result
  end

  def self.find_by_style(style)
    sql = "SELECT * FROM exhibits WHERE style = $1"
    values = [style]
    exhibit = SqlRunner.run(sql, values)
    result = Exhibit.new(exhibit.first)
    return result
  end


end
