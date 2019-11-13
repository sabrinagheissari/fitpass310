# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all

Studio.destroy_all

Studio.create! ({
  name: "Speedy Turtles",
  address: "Shibuya",
  category: "Run Club",
  remote_photo_url: "https://images.unsplash.com/photo-1504398230496-c3bf48cdfa94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=521&q=80"
  })


Studio.create! ({
  name: "Doug's Little Ballerinas",
  address: "Ginza",
  category: "Ballet",
  remote_photo_url: "https://images.unsplash.com/photo-1521804906057-1df8fdb718b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  })

Studio.create! ({
  name: "Noah's Archs",
  address: "Harujuku",
  category: "Gymnastics",
  remote_photo_url: "https://images.unsplash.com/photo-1495555687398-3f50d6e79e1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  })

Studio.create! ({
  name: "310.RPM",
  address: "Meguro",
  category: "Spin",
  remote_photo_url: "https://images.unsplash.com/photo-1552196563-55cd4e45efb3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=926&q=80"
  })


teacher_name = ['Sabrina', 'Sriram', 'Emmanuel', 'Silvia', 'Charles']
difficulty = ['beginner', 'intermediate', 'advanced']
turtle_course_name = ['The Turtle and the Hare', 'Dont become a Turtle Soup', 'Baby Turtles', 'Hard Shells']
doug_course_name = ['Pirouettes by Doug', 'Twinkle Twinkle by Trouni', 'Barre by James', 'Spin like Douglas']
noah_course_name = ['Backflips', 'Sriram and Noah battle', 'Balance Beams', 'Handstands']
lewagon_course_name = ['Can You Keep Up', '620 RPM', 'Excelsior', 'Earn your Spaghetti, Yann']



25.times do
Course.create! ({
  name: turtle_course_name.sample,
  time: DateTime.now.in(rand(1..14).days).beginning_of_day + rand(6..21).hours,
  duration: rand(60..120),
  price: rand(15..30),
  capacity: rand(10..25),
  difficulty: difficulty.sample,
  teacher_name: teacher_name.sample,
  studio: Studio.first
  })
end

25.times do
Course.create! ({
  name: doug_course_name.sample,
  time: DateTime.now.in(rand(1..14).days).beginning_of_day + rand(6..21).hours,
  duration: rand(60..120),
  price: rand(15..30),
  capacity: rand(10..25),
  difficulty: difficulty.sample,
  teacher_name: teacher_name.sample,
  studio: Studio.second
  })
end

25.times do
Course.create! ({
  name: noah_course_name.sample,
  time: DateTime.now.in(rand(1..14).days).beginning_of_day + rand(6..21).hours,
  duration: rand(60..120),
  price: rand(15..30),
  capacity: rand(10..25),
  difficulty: difficulty.sample,
  teacher_name: teacher_name.sample,
  studio: Studio.third
  })
end

25.times do
Course.create! ({
  name: lewagon_course_name.sample,
  time: DateTime.now.in(rand(1..14).days).beginning_of_day + rand(6..21).hours,
  duration: rand(60..120),
  price: rand(15..30),
  capacity: rand(10..25),
  difficulty: difficulty.sample,
  teacher_name: teacher_name.sample,
  studio: Studio.fourth
  })
end




