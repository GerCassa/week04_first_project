require_relative("../db/sql_runner")

class Gallery

  attr_reader :id, :name

  def initialize(info)
    @id = info["id"].to_i
    @name = info["name"]
  end

end
