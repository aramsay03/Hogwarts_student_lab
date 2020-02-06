require_relative('../models/student')
require_relative('../models/house')


require('pry-byebug')

Student.delete_all()
House.delete_all()

  house1 = House.new({
    "house_name" => "Gryffindor",
    "url" => "/gryffindor.jpg"
    })

    house2 = House.new({
      "house_name" => "Ravenclaw",
      "url" => "/ravenclaw.jpg"
      })

      house3 = House.new({
        "house_name" => "Hufflepuff",
        "url" => "/hufflepuff.jpg"
        })

        house4 = House.new({
          "house_name" => "Slytherin",
          "url" => "/slytherin.jpg"
          })

house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "age" => 16,
  "house_id" => house1.id
  })

  student2 = Student.new({
    "first_name" => "Draco",
    "last_name" => "Malfoy",
    "age" => 15,
    "house_id" => house4.id
  })

    student3 = Student.new({
      "first_name" => "Hermione",
      "last_name" => "Granger",
      "age" => 17,
      "house_id" => house1.id
    })

student1.save()
student2.save()
student3.save()

binding.pry
nil
