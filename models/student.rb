require("pry")
require_relative("../db/sql_runner_hogwarts.rb")

class Student

  attr_reader(:id, :first_name, :last_name, :house, :age)

  def initialize(details)
    @id = details["id"].to_i() if details["id"]
    @first_name = details["first_name"]
    @last_name = details["last_name"]
    @house = details["house"]
    @age = details["age"].to_i()
  end

end
