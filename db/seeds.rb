require_relative('../models/student')

require('pry-byebug')

Student.delete_all()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 16
  })

  student2 = Student.new({
    "first_name" => "Draco",
    "last_name" => "Malfoy",
    "house" => "Slytherin",
    "age" => 15
  })

    student3 = Student.new({
      "first_name" => "Hermione",
      "last_name" => "Granger",
      "house" => "Gryffindor",
      "age" => 17
    })

student1.save()
student2.save()
student3.save()

binding.pry
nil
