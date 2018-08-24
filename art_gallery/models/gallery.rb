require_relative("../db/sql_runner")

class Gallery

  attr_reader :id, :name

  def initialize(info)
    @id = info["id"].to_i
    @name = info["name"]
  end

  def save()
    sql = "INSERT INTO galleries
      (name)
      VALUES
      ($1)
      RETURNING *"
      values = [@name]
      artist_info = SqlRunner.run(sql, values)
      @id = artist_info.first()["id"].to_i
  end

end
