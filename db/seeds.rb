require_relative("../models/student.rb")

@student1 = Student.new({
  "first_name" => "Stuart",
  "last_name" => "Charters",
  "house" => "Hufflepuff",
  "age" => "26"
  })

@student2 = Student.new({
  "first_name" => "Gabo",
  "last_name" => "Buendia",
  "house" => "Ravenclaw",
  "age" => "40"
  })

@student3 = Student.new({
  "first_name" => "Joe",
  "last_name" => "Bloggs",
  "house" => "Gryffindor",
  "age" => "18"
  })

@student4 = Student.new({
  "first_name" => "Jane",
  "last_name" => "Bobbson",
  "house" => "Slytherin",
  "age" => "38"
  })
