require_relative('../db/sql_runner')

class House

  attr_reader :id
  attr_accessor :house_name, :url

  def initialize(options)
    @id = options['id'].to_i
    @house_name = options['house_name']
    @url = options['url']
  end

  def save()
    sql = "INSERT INTO houses
    (house_name, url)
    VALUES
    ($1, $2)
    RETURNING id"
    values = [@house_name, @url]
    house = SqlRunner.run(sql, values).first
    @id = house['id'].to_i
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house = SqlRunner.run(sql, values)
    result = House.new(house.first)
    return result
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map{ |house| House.new(house)}
    return result
  end

  def self.delete_all()
      sql = "DELETE FROM houses;"
      SqlRunner.run(sql)
  end

end
