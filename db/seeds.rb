# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all

Studio.destroy_all

hiit = Studio.create! ({
  name: "HIIT it!",
  description: "HIIT it! is a high intensity interval training studio, perfect for those who are looking for a high-calorie burn workout in a short period of time. Unlike other HIIT studios we offer beginner, intermediate, and advanced classes. Join us. HIIT it. Get it.",
  email: "fake_shinjuku@gomail.com",
  address: "Shinjuku",
  category: "High Intensity Interval Training",
  remote_photo_url: "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Fallisonolms%2Ffiles%2F2018%2F10%2FEquinox-TIERX_BATTLEROPES_JACOBSUTTON.jpg"
  })

stomp = Studio.create! ({
  name: "Stomp",
  description: "HIIT classes for those who have been HIITing for some time. Commit to us and by summer you'll be able to grate cheese on those abs.",
  address: "Shinjuku",
  category: "High Intensity Interval Training",
  remote_photo_url: "https://media.cdn-equinox.com/website/clubs/pt-image/156650_UPDATE_PT_IMAGES-Female-Desktop.png"
  })


doug = Studio.create! ({
  name: "Doug's Little Ballerinas",
  description: "Doug is a well renound ballet dancer from Missouri, having danced swan lake every Christmas since he was 12. He has a passion for teaching young ballet dancers and ballerinas to make it in Tokyo. Your children will be in good hands with Doug and his associates.",
  email: "fake_ginza@gomail.com",
  address: "Ginza",
  category: "Ballet",
  remote_photo_url: "https://scontent-nrt1-1.xx.fbcdn.net/v/t31.0-8/30171049_10155816985119440_7078030717394408257_o.jpg?_nc_cat=100&_nc_oc=AQnk8vurkftfHU4TMHjELDnco8IRNROqq--B8ukKlId4QGTf1kvgXwMp0gZ15QWBDIo&_nc_ht=scontent-nrt1-1.xx&oh=36036fad4e5c89a1c8d2bbd45e9a0c21&oe=5E8C4DBA"
  })

noah = Studio.create! ({
  name: "Noah's Archs",
  description: "Noah's Archs is a gymnastics arena that has graduated many famous gymnasts from Tokyo. We are proud to sponsor the 2020 Games.",
  email: "fake_harajuku@gomail.com",
  address: "Harajuku",
  category: "Gymnastics",
  remote_photo_url: "http://www.firststategymnastics.com/uploads/7/4/1/9/74197027/9212134.jpg"
  })

rpm = Studio.create! ({
  name: "310.RPM",
  description: "310.RPM is an intense spin class modeled after our sister club, SoulCycle, in New York City. We are changing the spin game in Tokyo. Wake up to an instructor shouting instructions with disco jams, or come get revived after a long boring day in front of the computer.",
  email: "fake_meguro@gomail.com",
  address: "Meguro",
  category: "Spinning",
  remote_photo_url: "https://media.cdn-equinox.com/website/cycling2018/2/cycling-intro-2-x1.jpg"
  })

needle = Studio.create! ({
  name: "Spinning Needles",
  description: "An all female class, we hope to help women feel comfortable getting fit in an unintimidating environment. We want you. Join us.",
  address: "Shibuya",
  category: "Spinning",
  remote_photo_url: "https://img.huffingtonpost.com/asset/5cf8f0fa240000300f85977c.jpeg?ops=1778_1000"
  })

swim = Studio.create! ({
  name: "Beach Bodz",
  description: "Name a better way to encourage yourself to get ready for the beach than wearing a swimsuit to workout. We'll wait.",
  address: "Meguro",
  category: "Swim",
  remote_photo_url: "https://media.cdn-equinox.com/website/Images/GROUP-FITNESS-REDESIGN/SignatureClasses/EQXH20_POWER1280x450_2x_hero.jpg"
  })

steel = Studio.create! ({
  name: "STEEL BOYS",
  description: "STEEL BOYS is a testosterone filled bunker-style gym made for real men who lift. Don't bother coming if you're intimidated easily.",
  address: "Ginza",
  category: "Weight training",
  remote_photo_url: "https://images.unsplash.com/photo-1521804906057-1df8fdb718b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  })



teacher_name = ['Yann', 'Doug', 'Trouni', 'Charles', 'Hide', 'Sylvain', 'James']
difficulty = ['Beginner', 'Intermediate', 'Advanced']
hiit_course_name = ['45 Minutes of Misery', 'Becoming a HIIT master', 'Jungle Gym', 'Ropes and Rowers']
stomp_course_name = ['Fire', 'Orange Zone', 'Not for Slackers', 'Ab Lab']
doug_course_name = ['Pirouettes by Doug', 'Twinkle Twinkle', 'Barre', 'Spin it like a Douglas']
noah_course_name = ['Backflips', 'Free Reign', 'Balance Beams', 'Handstands']
spin_course_name = ['Can You Keep Up', '620 RPM', 'Excelsior', 'Earn Your Spaghetti']
needle_course_name = ['Climb', 'Stamina', 'Swiss Mountains', 'Cycle like a Lady']
swim_course_name = ['Butterfly', 'Resistance', 'Lungs of Steel', 'Fast and Freestyle']
steel_course_name = ['IRON MADEN', 'MA WHERES THE PROTEIN?', 'GODZILLA', 'ARNOLD']



15.times do
  Course.create! ({
    name: hiit_course_name.sample,
    time: DateTime.now.in(rand(1..7).days).beginning_of_day + (9/24.0) + rand(6..21).hours,
    duration: rand(60..120),
    price: rand(15..30),
    capacity: rand(10..25),
    difficulty: difficulty.sample,
    teacher_name: teacher_name.sample,
    studio: hiit
  })
end

15.times do
  Course.create! ({
    name: stomp_course_name.sample,
    time: DateTime.now.in(rand(1..7).days).beginning_of_day + (9/24.0) + rand(6..21).hours,
    duration: rand(60..120),
    price: rand(15..30),
    capacity: rand(10..25),
    difficulty: "Advanced",
    teacher_name: teacher_name.sample,
    studio: stomp
  })
end

15.times do
  Course.create! ({
    name: doug_course_name.sample,
    time: DateTime.now.in(rand(1..7).days).beginning_of_day + (9/24.0) + rand(6..21).hours,
    duration: rand(60..120),
    price: rand(15..30),
    capacity: rand(10..25),
    difficulty: "Beginner",
    teacher_name: teacher_name.sample,
    studio: doug
  })
end

15.times do
  Course.create! ({
    name: noah_course_name.sample,
    time: DateTime.now.in(rand(1..7).days).beginning_of_day + (9/24.0) + rand(6..21).hours,
    duration: rand(60..120),
    price: rand(15..30),
    capacity: rand(10..25),
    difficulty: difficulty.sample,
    teacher_name: teacher_name.sample,
    studio: noah
  })
end

15.times do
  Course.create! ({
    name: spin_course_name.sample,
    time: DateTime.now.in(rand(1..7).days).beginning_of_day + (9/24.0) + rand(6..21).hours,
    duration: rand(60..120),
    price: rand(15..30),
    capacity: rand(10..25),
    difficulty: difficulty.sample,
    teacher_name: teacher_name.sample,
    studio: rpm
  })
end

15.times do
  Course.create! ({
    name: needle_course_name.sample,
    time: DateTime.now.in(rand(1..7).days).beginning_of_day + (9/24.0) + rand(6..21).hours,
    duration: rand(60..120),
    price: rand(15..30),
    capacity: rand(10..25),
    difficulty: difficulty.sample,
    teacher_name: teacher_name.sample,
    studio: needle
  })
end

15.times do
  Course.create! ({
    name: swim_course_name.sample,
    time: DateTime.now.in(rand(1..7).days).beginning_of_day + (9/24.0) + rand(6..21).hours,
    duration: rand(60..120),
    price: rand(15..30),
    capacity: rand(10..25),
    difficulty: difficulty.sample,
    teacher_name: teacher_name.sample,
    studio: swim
  })
end

15.times do
  Course.create! ({
    name: steel_course_name.sample,
    time: DateTime.now.in(rand(1..7).days).beginning_of_day + (9/24.0) + rand(6..21).hours,
    duration: rand(60..120),
    price: rand(15..30),
    capacity: rand(10..25),
    difficulty: "Advanced",
    teacher_name: teacher_name.sample,
    studio: steel
  })
end

Course.create! ({
  name: spin_course_name.sample,
  time: Date.today - 2,
  duration: rand(60..120),
  price: rand(15..30),
  capacity: rand(10..25),
  difficulty: difficulty.sample,
  teacher_name: teacher_name.sample,
  studio: rpm
})

Booking.create! ({
  course_id: Course.last.id,
  user_id: User.last.id
})
