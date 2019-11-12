# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Session.destroy_all

Studio.destroy_all

Studio.create! ({
  name: "Speedy Turtles",
  address: "Shibuya",
  category: "Run Club"
  })

Studio.create! ({
  name: "Doug's Little Ballerinas",
  address: "Ginza",
  category: "Ballet"
  })

Studio.create! ({
  name: "Noah's Archs",
  address: "Harujuku",
  category: "Gymnastics"
  })

Studio.create! ({
  name: "310.RPM",
  address: "Meguro",
  category: "Spin"
  })




teacher_name = ['Sabrina', 'Sriram', 'Emmanuel', 'Silvia', 'Charles']
difficulty = ['beginner', 'intermediate', 'advanced']
turtle_session_name = ['The Turtle and the Hare', 'Dont become a Turtle Soup', 'Baby Turtles', 'Hard Shells']
doug_session_name = ['Pirouettes by Doug', 'Twinkle Twinkle by Trouni', 'Barre by James', 'Spin like Douglas']
noah_session_name = ['Backflips', 'Sriram and Noah battle', 'Balance Beams', 'Handstands']
lewagon_session_name = ['Can You Keep Up', '620 RPM', 'Excelsior', 'Earn your Spaghetti, Yann']



25.times do
Session.create! ({
  name: turtle_session_name.sample,
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
Session.create! ({
  name: doug_session_name.sample,
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
Session.create! ({
  name: noah_session_name.sample,
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
Session.create! ({
  name: lewagon_session_name.sample,
  time: DateTime.now.in(rand(1..14).days).beginning_of_day + rand(6..21).hours,
  duration: rand(60..120),
  price: rand(15..30),
  capacity: rand(10..25),
  difficulty: difficulty.sample,
  teacher_name: teacher_name.sample,
  studio: Studio.fourth
  })
end




