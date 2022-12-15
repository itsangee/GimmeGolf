# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Invitation.destroy_all
Booking.destroy_all
Course.destroy_all
User.destroy_all
# Attendee.destroy_all

user = User.new(email: "magdalena@gmail.com",
                password: "123456",
                first_name: "Magda",
                last_name: "Krasicka",
                bio: "Exploring the world one golf course at a time!")
user.save!
puts "creating"

user_2 = User.new(email: "angee@gmail.com",
                  password: "123456",
                  first_name: "Angee",
                  last_name: "Otic",
                  bio: "Seeking new adventures and new friends! Join me for a game!")
user_2.save!
puts "created..."

user_3 = User.new(email: "johnnyboy@gmail.com",
                  password: "123456",
                  first_name: "Johnny",
                  last_name: "Boy",
                  bio: "I love swinging balls and to make new friends :)")
user_3.save!
puts "creating!.."

user_4 = User.new(email: "mustafatahir@hotmail.co.uk",
                  password: "123456",
                  first_name: "Mustafa",
                  last_name: "Tahir",
                  bio: "My knees are getting banged up from football so I need to change sports!")
user_4.save!
puts "creating!.."

user_5 = User.new(email: "teddy_sheringham@hotmail.co.uk",
  password: "123456",
  first_name: "Teddy",
  last_name: "Sheringham",
  bio: "I love it!")
user_5.save!
puts "creating!.."

user_6 = User.new(email: "niko_bellic@hotmail.co.uk",
  password: "123456",
  first_name: "Niko",
  last_name: "Bellic",
  bio: "I love this game")
user_6.save!
puts "creating!.."




course_1_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1668713898/GimmeGolf/hole-3_s9uoox.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1668713899/GimmeGolf/pexels-pixabay-164250_mnaa6k.jpg']

course_1_filenames = ['hole-3_s9uoox.jpg', 'pexels-pixabay-164250_mnaa6k.jpg']


course_2_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1668713899/GimmeGolf/sedlescombe_ojnsxu.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1668713899/GimmeGolf/Woodbury-Park-Course-5_evdp0g.jpg']

course_2_filenames = ['sedlescombe_ojnsxu.jpg', 'Woodbury-Park-Course-5_evdp0g.jpg']

course_3_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1668713898/GimmeGolf/greenside-on-the-2nd-hole-at-thorpeness-golf-course-suffolk_csxzmt.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1668713899/GimmeGolf/opens2_iote5h.jpg']

course_3_filenames = ['greenside-on-the-2nd-hole-at-thorpeness-golf-course-suffolk_csxzmt.jpg', 'opens2_iote5h.jpg']

course_4_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1668714790/GimmeGolf/Great_Waters_at_Reynolds_Lake_Oconee_-_Oct_2019_brgr1z.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1668714790/GimmeGolf/ahnrz-golf-course-50669717_cwj6n1.jpg']

course_4_filenames = ['Great_Waters_at_Reynolds_Lake_Oconee_-_Oct_2019_brgr1z.jpg', 'ahnrz-golf-course-50669717_cwj6n1.jpg']

course_5_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1668713898/GimmeGolf/Kendleshire-Golf-5_gsqpch.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1670928195/GimmeGolf/new33_gtdeqh.jpg']

course_5_filenames = ['Kendleshire-Golf-5_gsqpch.jpg', 'millgreen_k4vkdz.jpg', 'new33_gtdeqh.jpg']

course_6_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1668713898/GimmeGolf/hole-14-Course-image_gshcym.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1668713898/GimmeGolf/img_bg_1_hyigjy.jpg']

course_6_filenames = ['hole-14-Course-image_gshcym.jpg', 'img_bg_1_hyigjy.jpg']

course_7_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1670928198/GimmeGolf/surrey1_ghpm5y.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1670928197/GimmeGolf/surrey3_ra67hl.jpg']

course_7_filenames = ['surrey1_ghpm5y.jpg', 'surrey3_ra67hl']

course_8_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1670928197/GimmeGolf/new1_bzal7z.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1670928197/GimmeGolf/surrey4_drxx09.jpg']

course_8_filenames = ['new1_bzal7z.jpg', 'surrey4_drxx09.jpg']

course_9_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1670928197/GimmeGolf/surrey2_i5rhfk.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1670928197/GimmeGolf/surrey5_zjtf7x.jpg']

course_9_filenames = ['surrey2_i5rhfk.jpg', 'surrey5_zjtf7x']

course_10_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1670928196/GimmeGolf/surrey_mopcfq.jpg',
                  'https://res.cloudinary.com/dwsijevfb/image/upload/v1670928196/GimmeGolf/new222_ec9wzh.jpg']

course_10_filenames = ['surrey_mopcfq.jpg', 'new222_ec9wzh.jpg']

course_11_photo = ['https://res.cloudinary.com/dwsijevfb/image/upload/v1670928196/GimmeGolf/new44_dlm0pm.jpg', 'https://res.cloudinary.com/dwsijevfb/image/upload/v1670928195/GimmeGolf/new2_bpxhbb.jpg']

course_11_filenames = ['new44_dlm0pm.jpg', 'new2_bpxhbb.jpg']


course_1_file = URI.open(course_1_photo[0])
course_1a_file = URI.open(course_1_photo[1])

course_1 = Course.create(
  name: "Enfield Golf Club",
  description: "Our picturesque, 18 hole parkland Course and Clubhouse are situated in beautiful, tranquil surroundings and we are ideally located in North London, within easy reach of the M25, Hertfordshire and Essex.",
  location: "Denewood Rd, London, N6 4AH",
  price: 22,
  holes: 18,
  par: 72
)
course_1.photos.attach(io: course_1_file, filename: "#{course_1_filenames[0]}", content_type: 'image/jpg')
course_1.photos.attach(io: course_1a_file, filename: "#{course_1_filenames[1]}", content_type: 'image/jpg')
course_1.save
puts "created #{course_1}"


course_2_file = URI.open(course_2_photo[0])
course_2a_file = URI.open(course_2_photo[1])

course_2 = Course.create(
  name: "Woodford Golf Club",
  description: "Woodford Golf Clubs fantastic 9-hole course was created in 1890 making it one of the oldest in Essex. Woodford Golf Club’s course is beautifully designed through the Epping Forest making golfers feel secluded from the outside world.",
  location: "82 Winnington Rd, London, N2 0TU",
  price: 14,
  holes: 9,
  par: 70
)
course_2.photos.attach(io: course_2_file, filename: "#{course_2_filenames[0]}", content_type: 'image/jpg')
course_2.photos.attach(io: course_2a_file, filename: "#{course_2_filenames[1]}", content_type: 'image/jpg')
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
course_3.photos.attach(io: course_3_file, filename: "#{course_3_filenames[0]}", content_type: 'image/jpg')
course_3.photos.attach(io: course_3a_file, filename: "#{course_3_filenames[1]}", content_type: 'image/jpg')
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
course_4.photos.attach(io: course_4_file, filename: "#{course_4_filenames[0]}", content_type: 'image/jpg')
course_4.photos.attach(io: course_4a_file, filename: "#{course_4_filenames[1]}", content_type: 'image/jpg')
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
course_5.photos.attach(io: course_5_file, filename: "#{course_5_filenames[0]}", content_type: 'image/jpg')
course_5.photos.attach(io: course_5a_file, filename: "#{course_5_filenames[1]}", content_type: 'image/jpg')
course_5.save
puts "created #{course_5}"


course_6_file = URI.open(course_6_photo[0])
course_6a_file = URI.open(course_6_photo[1])

course_6 = Course.create(
  name: "Dukes Meadows Golf",
  description: "Dukes Meadows overlooks the River Thames in Chiswick, it is well located for easy access to and from London and within close proximity to mainline stations.",
  location: "Rhodes Ave, London, N22 7UT",
  price: 30,
  holes: 18,
  par: 72
)
course_6.photos.attach(io: course_6_file, filename: "#{course_6_filenames[0]}", content_type: 'image/jpg')
course_6.photos.attach(io: course_6a_file, filename: "#{course_6_filenames[1]}", content_type: 'image/jpg')
course_6.save
puts "created #{course_6}"


course_7_file = URI.open(course_7_photo[0])
course_7a_file = URI.open(course_7_photo[1])

course_7 = Course.create(
  name: "Kingswood Golf & Country Club",
  description: " The course has stood the test of time but has recently had a complete remodelling of its bunkers
                  to adjust to the longer hitting game of today
                  which has been viewed as a great success. Due to its high standards of quality in all aspects ,
                  it is easy to see why Kingswood Golf Club attracts golfers from all over the country. ",
  location: "75 Dorking Rd, Chilworth, Guildford GU4 8NP",
  price: 35,
  holes: 18,
  par: 72
)

course_7.photos.attach(io: course_7_file, filename: "#{course_7_filenames[0]}", content_type: 'image/jpg')
course_7.photos.attach(io: course_7a_file, filename: "#{course_7_filenames[1]}", content_type: 'image/jpg')
course_7.save
puts "created #{course_7}"

course_8_file = URI.open(course_8_photo[0])
course_8a_file = URI.open(course_8_photo[1])

course_8 = Course.create(
  name: "Epsom Golf Club",
  description: "The clubhouse, built in 1893, has wood-beamed ceilings which reflect the age and history of the building.
                There is also a fully licensed bar which makes Epsom's clubhouse
                the perfect place for that post-round drink.
                We recommend you use the practice green before your round as the course's
                greens are a true test for all golfers.",
  location: "Longdown Lane South, Epsom, Surrey, KT174JR",
  price: 45,
  holes: 18,
  par: 70
)

course_8.photos.attach(io: course_8_file, filename: "#{course_8_filenames[0]}", content_type: 'image/jpg')
course_8.photos.attach(io: course_8a_file, filename: "#{course_8_filenames[1]}", content_type: 'image/jpg')
course_8.save
puts "created #{course_8}"

course_9_file = URI.open(course_9_photo[0])
course_9a_file = URI.open(course_9_photo[1])

course_9 = Course.create(
  name: "Surrey Downs Golf Club",
  description: "It is particularly attractive in the Summer months, when the rough adds further challenge and beautiful
                definition to an already pretty layout.
                A Downland course, with stunning views, wonderful skies and a feeling of calm and openness.",
  location: "The St, West Clandon, Guildford GU4 7TE",
  price: 40,
  holes: 18,
  par: 71
)

course_9.photos.attach(io: course_9_file, filename: "#{course_9_filenames[0]}", content_type: 'image/jpg')
course_9.photos.attach(io: course_9a_file, filename: "#{course_9_filenames[1]}", content_type: 'image/jpg')
course_9.save
puts "created #{course_9}"


course_10_file = URI.open(course_10_photo[0])
course_10a_file = URI.open(course_10_photo[1])

course_10 = Course.create(
  name: "Banstead Downs Golf Club",
  description: "Banstead Downs Golf Club was originally designed by James Braid and is one of the UK's finest down land courses.
                Its chalk base allows for excellent drainage helping to ensure the course remains open
                and playable on fine surfaces all year round.",
  location: "Hermitage Rd, St John's, Knaphill, Woking GU21 8TX",
  price: 43,
  holes: 18,
  par: 71
)

course_10.photos.attach(io: course_10_file, filename: "#{course_10_filenames[0]}", content_type: 'image/jpg')
course_10.photos.attach(io: course_10a_file, filename: "#{course_10_filenames[1]}", content_type: 'image/jpg')
course_10.save
puts "created #{course_10}"

course_11_file = URI.open(course_11_photo[0])
course_11a_file = URI.open(course_11_photo[1])

course_11 = Course.create(
  name: "Guildford Golf Club",
  description: "Founded in 1886 by Colonel W Bannatyne, Major W Pontifex and Mr E L Hooper,
                Guildford Golf Club is the oldest Club in Surrey!
                Originally six holes, the course was extended to eighteen holes in 1901
                and a new Clubhouse was built on the present site.",
  location: "Old Ln, Cobham KT11 1NG",
  price: 43,
  holes: 18,
  par: 69
)

course_11.photos.attach(io: course_11_file, filename: "#{course_11_filenames[0]}", content_type: 'image/jpg')
course_11.photos.attach(io: course_11a_file, filename: "#{course_11_filenames[1]}", content_type: 'image/jpg')
course_11.save
puts "created #{course_11}"

courses = Course.all
courses.each do |course|
  Slot.create(course: course, start_time: '09:00:00', end_time: '12:00:00')
  Slot.create(course: course, start_time: '13:00:00', end_time: '16:00:00')
  Slot.create(course: course, start_time: '17:00:00', end_time: '20:00:00')
end


Booking.create!(user_id: user.id, slot_id: 9, date: Date.parse('2022-08-15'))
Booking.create!(user_id: user.id, slot_id: 3, date: Date.parse('2022-10-02'))
Booking.create!(user_id: user.id, slot_id: 3, date: Date.parse('2022-10-11'))
Booking.create!(user_id: user.id, slot_id: 3, date: Date.parse('2023-01-10'))
Booking.create!(user_id: user_2.id, slot_id: 3, date: Date.parse('2022-12-30'))
Booking.create!(user_id: user_2.id, slot_id: 3, date: Date.parse('2022-09-17'))
Booking.create!(user_id: user_3.id, slot_id: 7, date: Date.parse('2022-10-07'))
Booking.create!(user_id: user_4.id, slot_id: 3, date: Date.parse('2022-08-12'))
Booking.create!(user_id: user_4.id, slot_id: 1, date: Date.parse('2022-09-12'))
Booking.create!(user_id: user_3.id, slot_id: 7, date: Date.parse('2022-12-15'))
Booking.create!(user_id: user_3.id, slot_id: 7, date: Date.parse('2022-11-28'))

# Slots for Leatherhead 9am and 1pm Saturday
Booking.create!(user_id: user_6.id, slot_id: 2, date: Date.parse('2022-12-17'))

# Slot for 5pm



Follow.create!(following_id: 1, follower_id: 3)
Follow.create!(following_id: 2, follower_id: 3)
Follow.create!(following_id: 4, follower_id: 3)
Follow.create!(following_id: 3, follower_id: 1)
Follow.create!(following_id: 2, follower_id: 1)
Follow.create!(following_id: 4, follower_id: 1)
Follow.create!(following_id: 1, follower_id: 4)
Follow.create!(following_id: 4, follower_id: 2)
Follow.create!(following_id: 3, follower_id: 4)
Follow.create!(following_id: 1, follower_id: 2)

Invitation.create!(booking_id: 6, user_id: 3, invite_seen: false)
# Invitation.create!(booking_id: 11, user_id: 2, invite_seen: false)
Invitation.create!(booking_id: 5, user_id: 1, invite_seen: false)


Review.create!(course_id: 5, user_id: 3, content: 'Sick course! I made so many friends there :)', ratings: 5)
Review.create!(course_id: 5, user_id: 2, content: 'Super course - I went during the summer and it was amazing', ratings: 5)
Review.create!(course_id: 5, user_id: 5, content: 'Great course, the holes and par are perfect for my level', ratings: 5)
Review.create!(course_id: 5, user_id: 6, content: 'The lake alone is worth coming here!!', ratings: 5)
Review.create!(course_id: 1, user_id: 3, content: 'Sick course! I made so many friends there :)', ratings: 5)
Review.create!(course_id: 2, user_id: 2, content: 'Super course - I went during the summer and it was amazing', ratings: 4)
Review.create!(course_id: 3, user_id: 5, content: 'Great course, the holes and par are perfect for my level', ratings: 4)
Review.create!(course_id: 4, user_id: 3, content: 'Sick course! I made so many friends there :)', ratings: 2)
Review.create!(course_id: 6, user_id: 2, content: 'Super course - I went during the summer and it was amazing', ratings: 4)
Review.create!(course_id: 7, user_id: 5, content: 'Great course, the holes and par are perfect for my level', ratings: 5)
Review.create!(course_id: 3, user_id: 1, content: 'Great course, the holes and par are perfect for my level', ratings: 2)
Review.create!(course_id: 4, user_id: 2, content: 'Sick course! I made so many friends there :)', ratings: 3)
Review.create!(course_id: 6, user_id: 3, content: 'Super course - I went during the summer and it was amazing', ratings: 1)
Review.create!(course_id: 7, user_id: 4, content: 'Great course, the holes and par are perfect for my level', ratings: 2)
Review.create!(course_id: 8, user_id: 4, content: 'Great course, the holes and par are perfect for my level', ratings: 4)
Review.create!(course_id: 9, user_id: 4, content: 'Great course, the holes and par are perfect for my level', ratings: 3)
Review.create!(course_id: 10, user_id: 4, content: 'Great course, the holes and par are perfect for my level', ratings: 5)
Review.create!(course_id: 11, user_id: 4, content: 'Great course, the holes and par are perfect for my level', ratings: 3)
