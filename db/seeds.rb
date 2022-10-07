User.destroy_all
Location.destroy_all
Review.destroy_all

puts "🌱 Seeding users..."
User.create(username: "test", password: "123")
u1 = User.create(username: "leslie_newman", password: "password123")
u2 = User.create(username: "ColinSwanson", password: "Swanson1!")
u3 = User.create(username: "kristi.ortega", password: "kitt3ns$1")
u4 = User.create(username: "_travisRobinson", password: "iLovePizza5")

puts "🌱 Seeding locations..."
l1 = Location.create(location_name: "The Metropolitan Museum of Art", address: "1000 5th Ave, New York, NY 10028", image_Url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/61/95/89/the-met-fifth-avenue.jpg?w=1200&h=-1&s=1", category: "Attraction")
l2 = Location.create(location_name: "Brooklyn Botanic Garden", address: "990 Washington Ave, Brooklyn, NY 11225", image_Url: "https://offloadmedia.feverup.com/secretnyc.co/wp-content/uploads/2020/05/10103209/bbg6.jpg", category: "Attraction")
l3 = Location.create(location_name: "Carbone", address: "181 Thompson St, New York, NY 10012", image_Url: "https://media.newyorker.com/photos/609ed8bdd60710aaa9f4848a/16:9/w_2560,h_1440,c_limit/Rosner-Carbone.jpg", category: "Restaurant")
l4 = Location.create(location_name: "COTE NYC", address: "16 W 22nd St, New York, NY 10010", image_Url: "http://cdn.cnn.com/cnnnext/dam/assets/180827153546-cote-nyc-korean-steakhouse-13.jpg", category: "Restaurant")

puts "🌱 Seeding reviews..."
r1 = Review.create(user_id: u1.id, location_id: l1.id, description: "Such a beautiful place to see artwork. Highly recommend as a first date spot (especially if you like art!)")
r2 = Review.create(user_id: u2.id, location_id: l2.id, description: "Cool vibes.")
r3 = Review.create(user_id: u3.id, location_id: l3.id, description: "Food was definitely good, but you'll need to fight for a reservation.")
r4 = Review.create(user_id: u4.id, location_id: l4.id, description: "Good, but my date ate too much and it was pretty pricey.")

puts "✅ Done seeding!"
