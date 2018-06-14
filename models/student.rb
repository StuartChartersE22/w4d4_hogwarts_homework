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

#SQL instance methods

  def save()
    sql = "INSERT INTO students
    (first_name, last_name, house, age) VALUES ($1, $2, $3, $4)
    RETURNING id"
    values = [@first_name, @last_name, @house, @age]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i()
  end

#SQL class methods

  def self.delete_all()
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end

  def self.map_students(students)
    return students.map {|student| Student.new(student)}
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    return self.map_students(students)
  end

  def self.find(id)

  end

end
