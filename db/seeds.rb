# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

User.destroy_all
# Course.destroy_all
# Booking.destroy_all
# Attendee.destroy_all

user = User.new(email: "magdalena@gmail.com", password: "123456")
user.save!
puts "creating"

user_2 = User.new(email: "angee@gmail.com", password: "123456")
user_2.save!
puts "created..."

course_1_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1668713898/GimmeGolf/hole-3_s9uoox.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1668713899/GimmeGolf/pexels-pixabay-164250_mnaa6k.jpg']

course_1_filenames = ['hole-3_s9uoox', 'pexels-pixabay-164250_mnaa6k']


course_2_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1668713899/GimmeGolf/sedlescombe_ojnsxu.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1668713899/GimmeGolf/Woodbury-Park-Course-5_evdp0g.jpg']

course_2_filenames = ['sedlescombe_ojnsxu', 'Woodbury-Park-Course-5_evdp0g']

course_3_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1668713898/GimmeGolf/greenside-on-the-2nd-hole-at-thorpeness-golf-course-suffolk_csxzmt.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1668713899/GimmeGolf/opens2_iote5h.jpg']

course_3_filenames = ['greenside-on-the-2nd-hole-at-thorpeness-golf-course-suffolk_csxzmt', 'opens2_iote5h']

course_4_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1668714790/GimmeGolf/Great_Waters_at_Reynolds_Lake_Oconee_-_Oct_2019_brgr1z.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1668714790/GimmeGolf/ahnrz-golf-course-50669717_cwj6n1.jpg']

course_4_filenames = ['Great_Waters_at_Reynolds_Lake_Oconee_-_Oct_2019_brgr1z', 'ahnrz-golf-course-50669717_cwj6n1']

course_5_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1668713898/GimmeGolf/Kendleshire-Golf-5_gsqpch.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1668713898/GimmeGolf/millgreen_k4vkdz.jpg']

course_5_filenames = ['Kendleshire-Golf-5_gsqpch', 'millgreen_k4vkdz']

course_6_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1668713898/GimmeGolf/hole-14-Course-image_gshcym.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1668713898/GimmeGolf/img_bg_1_hyigjy.jpg']

course_6_filenames = ['hole-14-Course-image_gshcym', 'img_bg_1_hyigjy']


course_1_file = URI.open(course_1_photo[0])
course_1a_file = URI.open(course_1_photo[1])

course_1 = Course.create(
  name: "Enfield Golf Club",
  description: "Our picturesque, 18 hole parkland Course and Clubhouse are situated in beautiful, tranquil surroundings and we are ideally located in North London, within easy reach of the M25, Hertfordshire and Essex.",
  location: "Old Park Road South, Enfield, Middlesex, EN27DA",
  price: 22,
  holes: 18,
  par: 72
)
course_1.photos.attached[io: course_1_file, filename: "#{course_1_filenames[0]}", content_type: 'image/jpg']
course_1.photos.attached[io: course_1a_file, filename: "#{course_1_filenames[1]}", content_type: 'image/jpg']
course_1.save
puts "created #{course_1}"


course_2_file = URI.open(course_2_photo[0])
course_2a_file = URI.open(course_2_photo[1])

course_2 = Course.create(
  name: "Woodford Golf Club",
  description: "Woodford Golf Clubs fantastic 9-hole course was created in 1890 making it one of the oldest in Essex. Woodford Golf Club’s course is beautifully designed through the Epping Forest making golfers feel secluded from the outside world.",
  location: "Sunset Avenue, Woodford, Essex, IG8 0ST",
  price: 14,
  holes: 9,
  par: 70
)
course_2.photos.attached[io: course_2_file, filename: "#{course_2_filenames[0]}", content_type: 'image/jpg']
course_2.photos.attached[io: course_2a_file, filename: "#{course_2_filenames[1]}", content_type: 'image/jpg']
course_2.save
puts "created #{course_2}"


course_3_file = URI.open(course_3_photo[0])
course_3a_file = URI.open(course_3_photo[1])

course_3 = Course.create(
  name: "Woldingham Golf Club",
  description: "Woldingham golf course was designed by the prestigious American architect Bradford Benz. The stately clubhouse has fantastic panoramic views of the course and a large patio area where players can unwind after a tough round.",
  location: "Halliloo Valley Road, Woldingham, Surrey, CR37HA",
  price: 30,
  holes: 18,
  par: 71
)
course_3.photos.attached[io: course_3_file, filename: "#{course_3_filenames[0]}", content_type: 'image/jpg']
course_3.photos.attached[io: course_3a_file, filename: "#{course_3_filenames[1]}", content_type: 'image/jpg']
course_3.save
puts "created #{course_2}"


course_4_file = URI.open(course_4_photo[0])
course_4a_file = URI.open(course_4_photo[1])

course_4 = Course.create(
  name: "Panshanger Golf Complex",
  description: "Panshanger Golf Complex is the home to one of the UK's most highly regarded public courses with stunning views over Hertfordshire's Mimram Valley.",
  location: "Old Herns Lane, Welwyn Garden City, Hertfordshire, AL72ED",
  price: 17,
  holes: 72,
  par: 18
)
course_4.photos.attached[io: course_4_file, filename: "#{course_4_filenames[0]}", content_type: 'image/jpg']
course_4.photos.attached[io: course_4a_file, filename: "#{course_4_filenames[1]}", content_type: 'image/jpg']
course_4.save
puts "created #{course_4}"


course_5_file = URI.open(course_5_photo[0])
course_5a_file = URI.open(course_5_photo[1])

course_5 = Course.create(
  name: "The Leatherhead Club",
  description: "Founded in 1903 Leatherhead is still a true test to every golfer. A mixture of woodland and parkland Leatherhead Golf Course is a Par 70, 6,203 yard golf course set in the beautiful countryside of Surrey.",
  location: "Kingston Road, Leatherhead, Surrey, KT22 0EE",
  price: 40,
  holes: 18,
  par: 70
)
course_5.photos.attached[io: course_5_file, filename: "#{course_5_filenames[0]}", content_type: 'image/jpg']
course_5.photos.attached[io: course_5a_file, filename: "#{course_5_filenames[1]}", content_type: 'image/jpg']
course_5.save
puts "created #{course_5}"


course_6_file = URI.open(course_6_photo[0])
course_6a_file = URI.open(course_6_photo[1])

course_6 = Course.create(
  name: "Dukes Meadows Golf",
  description: "Dukes Meadows overlooks the River Thames in Chiswick, it is well located for easy access to and from London and within close proximity to mainline stations.",
  location: "Dan Mason Drive, Chiswick, Middlesex, W4 2SH",
  price: 30,
  holes: 18,
  par: 72
)
course_6.photos.attached[io: course_6_file, filename: "#{course_6_filenames[0]}", content_type: 'image/jpg']
course_6.photos.attached[io: course_6a_file, filename: "#{course_6_filenames[1]}", content_type: 'image/jpg']
course_6.save
puts "created #{course_6}"
