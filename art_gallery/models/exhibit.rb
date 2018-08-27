require_relative('../db/sql_runner')

class Exhibit

  attr_reader :id
  attr_accessor :name, :date_created, :format, :style, :artist_id

  def initialize(info)
    @id = info["id"].to_i
    @name = info["name"]
    @date_created = info["date_created"]
    @style = info["style"]
    @artist_id = info["artist_id"].to_i
  end


end
