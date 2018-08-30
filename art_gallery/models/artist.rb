require_relative('../db/sql_runner')

class Artist

  attr_reader :id
  attr_accessor :first_name, :last_name, :bio, :style, :gallery_id

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

  def exhibit()
    sql = "SELECT * FROM exhibits WHERE artist_id = $1"
    values = [@id]
    exhibits = SqlRunner.run(sql, values)
    result = exhibits.map {|exhibit| Exhibit.new(exhibit)}
    return result
  end

  def save()
    sql = "INSERT INTO artists
    ( first_name,
      last_name,
      style,
      bio,
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



  def self.destroy(id)
    sql = "DELETE FROM artists WHERE id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM artists;"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM artists"
    artists = SqlRunner.run(sql)
    result = artists.map {|artist| Artist.new(artist)}
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [id]
    artist = SqlRunner.run( sql, values )
    result = Artist.new( artist.first )
    return result
  end

  def self.find_first_name( first_name )
    sql = "SELECT * FROM artists WHERE first_name = $1"
    values = [first_name]
    artist = SqlRunner.run(sql, values)
    result = Artist.new(artist.first)
    return result
  end

  def self.find_last_name( last_name )
    sql = "SELECT * FROM artists WHERE last_name = $1"
    values = [last_name]
    artist = SqlRunner.run(sql, values)
    result = Artist.new(artist.first)
    return result
  end


end
