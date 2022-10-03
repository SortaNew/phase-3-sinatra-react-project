puts "🌱 Seeding users..."
u1 = User.create(username: "TBD", password: "XXX")
u2 = User.create(username: "TBD", password: "XXX")
u3 = User.create(username: "TBD", password: "XXX")
u4 = User.create(username: "TBD", password: "XXX")

puts "🌱 Seeding locations..."
l1 = Location.create(location_name: "TBD", address: "XXX", image_Url: "XXX", category: "XXX")
l2 = Location.create(location_name: "TBD", address: "XXX", image_Url: "XXX", category: "XXX")
l3 = Location.create(location_name: "TBD", address: "XXX", image_Url: "XXX", category: "XXX")
l4 = Location.create(location_name: "TBD", address: "XXX", image_Url: "XXX", category: "XXX")

puts "🌱 Seeding reviews..."
r1 = Review.create(user_id: 1, location_id: 1, description: "XXX")
r2 = Review.create(user_id: 1, location_id: 1, description: "XXX")
r3 = Review.create(user_id: 1, location_id: 1, description: "XXX")
r4 = Review.create(user_id: 1, location_id: 1, description: "XXX")

puts "✅ Done seeding!"
