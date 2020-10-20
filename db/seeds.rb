# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create!([
#   { first_name: "Alison", last_name: "Tucci", email: "alison@gmail.com" },
#   { first_name: "Robert", last_name: "Smith", email: "robert@gmail.com" },
#   { first_name: "Sherri", last_name: "Homes", email: "sherri@gmail.com" },
#   { first_name: "Kristina", last_name: "Kendal", email: "kristina@gmail.com" },
#   { first_name: "Nicole", last_name: "Stoom", email: "nicole@gmail.com" },
#   { first_name: "Des", last_name: "Goodbert", email: "des@gmail.com" },
#   { first_name: "Hannah", last_name: "Scott", email: "hannah@gmail.com" },
#   { first_name: "Tom", last_name: "Porter", email: "tom@gmail.com" },
#   { first_name: "Mike", last_name: "Smith", email: "mike@gmail.com" },
#   { first_name: "Shannon", last_name: "Larson", email: "shannon@gmail.com" },
#   { first_name: "Chris", last_name: "Huggs", email: "chris@gmail.com" },
#   { first_name: "Logan", last_name: "Parsons", email: "logan@gmail.com" },
#   { first_name: "Jimmy", last_name: "Degmoon", email: "jimmy@gmail.com" },
#   { first_name: "Serenity", last_name: "Marshall", email: "serentiy@gmail.com" },
#   { first_name: "Mia", last_name: "Nester", email: "mia@gmail.com" },
#   { first_name: "Riley", last_name: "Renalds", email: "riley@gmail.com" },
# ])

# Post.create!([
#   { plant_type: "Snake Plant", trade_for: "Spider Plant", description: "Healthy, rooted snake plant", location: "Colorado Springs", user_id: 3 },
#   { plant_type: "Ivy", trade_for: "Anything", description: "Just clipped this ivy vine. Anyone want it?", location: "Colorado Springs", user_id: 6 },
#   { plant_type: "Neon Pothos", trade_for: "Anything", description: "Clipped these a month ago. Very healthy roots", location: "Colorado Springs", user_id: 7 },
#   { plant_type: "Spider Plant", trade_for: "Pothos", description: "I cut off the babies. Any takers? I'd love a pothos to trade.", location: "Colorado Springs", user_id: 8 },
#   { plant_type: "Aloe", trade_for: "Anything", description: "My daughter knocked off a huge leg of my aloe. Would love to trade it for something", location: "Colorado Springs", user_id: 9 },
#   { plant_type: "Christmas Cactus", trade_for: "Christmas Cactus", description: "I have a huge christmas cactus and would love to trade a fresh clipping for a different type. Mind has red flowers", location: "Colorado Springs", user_id: 10 },
#   { plant_type: "Zebra Plant", trade_for: "Cactus", description: "Zebra Plant", location: "Colorado Springs", user_id: 11 },
#   { plant_type: "Philodendron", trade_for: "Anything", description: "I've been propogating this guy for a week now.", location: "Colorado Springs", user_id: 11 },
#   { plant_type: "Common Ivy", trade_for: "ZZ Plant", description: "I've been searching for a Raven ZZ Plant. Anyone want some common ivy for it?", location: "Colorado Springs", user_id: 13 },
#   { plant_type: "Elephant Bush", trade_for: "Anything", description: "I'd be willing for propogate for a good trade offer. Maybe a cactus of some kind?", location: "Colorado Springs", user_id: 14 },
#   { plant_type: "Cactus", trade_for: "Umbrella Plant", description: "Umbrella Tree", location: "Colorado Springs", user_id: 15 },
#   { plant_type: "Golden Pothos", trade_for: "Fern", description: "The propogated vine looks a little sickly. Anyone still want it?", location: "Colorado Springs", user_id: 6 },
#   { plant_type: "Wandering Dude", trade_for: "Anything", description: "Trying to trim my wandering dude and want the clippings to go to a good home.", location: "Colorado Springs", user_id: 17 },
#   { plant_type: "Monstera", trade_for: "Swiss Monstera", description: "Really want a Swiss Monstera to trade. I'd be willing to cut a branch off my giant monstera", location: "Colorado Springs", user_id: 18 },
#   { plant_type: "Peacelily", trade_for: "Aloe", description: "Just trying to get rid of my peacelily", location: "Colorado Springs", user_id: 9 },
#   { plant_type: "Nerve Plant", trade_for: "Anything", description: "Nerve Plant", location: "Colorado Springs", user_id: 20 },
# ])

# Offer.create!([
#   { post_id: , user_id: , message: "I'd love to trade!" },
# ])

# Tag.create!([
#   { name: "#peperomia" },
#   { name: "#jade" },
#   { name: "#zzplant" },
#   { name: "#peacelily" },
#   { name: "#calathea" },
#   { name: "#rubberplant" },
#   { name: "#snakeplant" },
#   { name: "#fern" },
#   { name: "#fiddleleaffig" },
#   { name: "#ivy" },
#   { name: "#zebraplant" },
#   { name: "#prayerplant" },
#   { name: "#succulent" },
#   { name: "#pothose" },
#   { name: "#tropical" },
#   { name: "#variegated" },
#   { name: "#shade" },
#   { name: "#water" },
#   { name: "#indirectlight" },
#   { name: "#partlight" },
#   { name: "#spiderplant" },
#   { name: "#umbrellatree" },
#   { name: "#palm" },
#   { name: "#aloe" },
#   { name: "#asparagusfern" },
#   { name: "#christmascactus" },
#   { name: "#chineseevergreen" },
#   { name: "#drecaena" },
#   { name: "#ficus" },
#   { name: "#hoya" },
#   { name: "#philodendron" },
#   { name: "#arrowheadvine" },
# ])

# PostTag.create!([
#   { post_id: 1, tag_id: 3 },
#   { post_id: 1, tag_id: 2 },
#   { post_id: 1, tag_id: 4 },
#   { post_id: 2, tag_id: 5 },
#   { post_id: 2, tag_id: 6 },
#   { post_id: 3, tag_id: 1 },
#   { post_id: 3, tag_id: 2 },
# ])
