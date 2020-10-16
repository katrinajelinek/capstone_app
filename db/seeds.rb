# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
  { first_name: "Charlotte", last_name: "Webb", email: "charlottewebb@gmail.com" },
  { first_name: "Howie", last_name: "Hubert", email: "howiehubert@gmail.com" },
  { first_name: "Karl", last_name: "Kandy", email: "karlkandy@gmail.com" },
])

Post.create!([
  { plant_type: "Neon Pothos", trade_for: "Golden Pothos", description: "Healthy clipping I've been rooting for 1 month. Ready to plant.", location: "Colorado Springs, CO", user_id: 1 },
  { plant_type: "Christmas Cactus", trade_for: "Any", description: "I just have some extra propogations. No need to trade.", location: "Manitou Springs, CO", user_id: 2 },
  { plant_type: "Monstera", trade_for: "Any", description: "Beautiful Swiss Monstera. Will trade for anything!", location: "Castle Rock, CO", user_id: 2 },
])

Offer.create!([
  { post_id: 1, user_id: 1, message: "I'd love to trade!" },
  { post_id: 1, user_id: 2, message: "I'd love to trade!" },
  { post_id: 2, user_id: 2, message: "I'd love to trade!" },
  { post_id: 2, user_id: 3, message: "I'd love to trade!" },
  { post_id: 3, user_id: 1, message: "I'd love to trade!" },
  { post_id: 1, user_id: 3, message: "I'd love to trade!" },
])

Tag.create!([
  { name: "#monstera" },
  { name: "#healthy" },
  { name: "#roots" },
  { name: "#colordosprings" },
  { name: "#brightlight" },
  { name: "#cactus" },
])

PostTag.create!([
  { post_id: 1, tag_id: 3 },
  { post_id: 1, tag_id: 2 },
  { post_id: 1, tag_id: 4 },
  { post_id: 2, tag_id: 5 },
  { post_id: 2, tag_id: 6 },
  { post_id: 3, tag_id: 1 },
  { post_id: 3, tag_id: 2 },
])
