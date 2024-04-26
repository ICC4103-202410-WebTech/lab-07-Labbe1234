User.delete_all

user1 = User.create(name: "John Doe", email: "johndoe@example.com", password: "password1")
user2 = User.create(name: 'Jane Smith', email: 'janesmith@example.com', password: 'password2')
user3 = User.create(name: 'Michael Johnson', email: 'michaeljohnson@example.com', password: 'password3')
user4 = User.create(name: 'Emily Davis', email: 'emilydavis@example.com', password: 'password4')
user5 = User.create(name: 'David Brown', email: 'davidbrown@example.com', password: 'password5')

Post.delete_all

post1 = Post.create(
    user: user1,
    title: "Enjoying the landscape",
    content: "Incredible landscape here in Mexico City",
    published_at: DateTime.new(2021, 11, 5, 9, 30, 0),
    answer_count: 30,
    likes_count: 10,
)

post2 = Post.create(
    user: user2,
    title: "Enjoying the landscape",
    content: "Incredible landscape here in Maipu, Chile",
    published_at: DateTime.new(2021, 06, 05, 9, 30, 0),
    answer_count: 100,
    likes_count: 1000,
)

post3 = Post.create(
    user: user3,
    title: "Enjoying life",
    content: "Hiking trip",
    published_at: DateTime.new(2020, 12, 5, 9, 30, 0),
    answer_count: 500,
    likes_count: 1090,
)

post4 = Post.create(
    user: user4,
    title: "Enjoying life",
    content: "At the pool with family",
    published_at: DateTime.new(2023, 02, 27, 9, 30, 0),
    answer_count: 90,
    likes_count: 100,
)

post5 = Post.create(
    user: user5,
    title: "Playing",
    content: "Playing with my friends",
    published_at: DateTime.new(2019, 01, 5, 9, 30, 0),
    answer_count: 9000,
    likes_count: 200000,
)

post6 = Post.create(
    user: user1,
    title: "Quiet day",
    content: "Trip to the park",
    published_at: DateTime.new(2018, 02, 4, 9, 30, 0),
    answer_count: 10,
    likes_count: 200,
)

post7 = Post.create(
    user: user2,
    title: "Quiet day",
    content: "Bike ride",
    published_at: DateTime.new(2020, 05, 5, 9, 30, 0),
    answer_count: 760,
    likes_count: 1034,
)

post8 = Post.create(
    user: user3,  
    title: "Beautiful place",
    content: "Trip to Japan, very beautiful place",
    published_at: DateTime.new(2020, 12, 5, 9, 30, 0),
    answer_count: 900,
    likes_count: 10000,
)

post9 = Post.create(
    user: user4,
    title: "Beautiful place",
    content: "Trip to Italy, very beautiful place",
    published_at: DateTime.new(2020, 04, 6, 9, 32, 0),
    answer_count: 904,
    likes_count: 10031,
)

post10 = Post.create(
    user: user5,
    title: "Beautiful place",
    content: "Trip to Scotland, very beautiful place",
    published_at: DateTime.new(2017, 12, 06, 3, 30, 0),
    answer_count: 30,
    likes_count: 102,
)

Tag.create([
    { name: 'Nature' },
    { name: 'Travel' },
    { name: 'Adventure' },
    { name: 'Family' },
    { name: 'Exploration' }
])

Tag.delete_all

post1.tags << Tag.find_by(name: 'Nature')
post1.tags << Tag.find_by(name: 'Exploration')

post2.tags << Tag.find_by(name: 'Exploration')
post2.tags << Tag.find_by(name: 'Travel')
post2.tags << Tag.find_by(name: 'Adventure')

post3.tags << Tag.find_by(name: 'Family')
post3.tags << Tag.find_by(name: 'Travel')

post4.tags << Tag.find_by(name: 'Family')  

post5.tags << Tag.find_by(name: 'Adventure')

post6.tags << Tag.find_by(name: 'Adventure')
post6.tags << Tag.find_by(name: 'Travel')

post7.tags << Tag.find_by(name: 'Nature')
post7.tags << Tag.find_by(name: 'Family')

post8.tags << Tag.find_by(name: 'Nature')

post9.tags << Tag.find_by(name: 'Nature')
post9.tags << Tag.find_by(name: 'Exploration')

post10.tags << Tag.find_by(name: 'Nature')
post10.tags << Tag.find_by(name: 'Travel')
post10.tags << Tag.find_by(name: 'Adventure')
post10.tags << Tag.find_by(name: 'Exploration')
post10.tags << Tag.find_by(name: 'Family')

