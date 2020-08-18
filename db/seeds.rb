# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cockroach.destroy_all
User.destroy_all


Cockroach.create(name: "Plankton", location: "34th Street", species: "Periplaneta americana", bio: "Looking for a gentle human to feed me crumbs", dowry: "cracker bits", img_url: "https://i0.wp.com/go-forth.com/wp-content/uploads/2017/04/cockroaches-pest-control.jpg")
Cockroach.create(name: "Ronnie", location: "Your trashcan", species: "Eurycotis floridana", bio: "I just want a dark, warm place to settle down", dowry: "diamond ring", img_url: "https://i0.wp.com/go-forth.com/wp-content/uploads/2013/10/Smokey-Brown-Cockroaches.jpg")
Cockroach.create(name: "Missy", location: "Your cupboard", species: "Blatta orientalis", bio: "I'm hungry", dowry: "5 million dollars", img_url: "https://www.pests.org/wp-content/uploads/2018/03/diyroaches_brownband.jpg")
Cockroach.create(name: "Ethel", location: "Central Park", species: "Blattella germanica", bio: "I like long walks in the alley", dowry: "a rent controlled apartment", img_url: "https://www.pests.org/wp-content/uploads/2018/03/diyroaches_orientalcockroach.jpg")
Cockroach.create(name: "Tenzin", location: "Williamsburg", species: "Blattella asahinai", bio: "I want to grow old with somebody", dowry: "leftover chinese takeout", img_url: "https://www.pests.org/wp-content/uploads/2018/03/diyroaches_australian.jpg")
Cockroach.create(name: "Harold", location: "Westchester", species: "Pycnoscelus surinamensis", bio: "Trying to move out of my parent's nest", dowry: "your heart", img_url: "https://www.pests.org/wp-content/uploads/2018/03/diyroaches_americancoackroach.jpg")
Cockroach.create(name: "Norman", location: "Down by the river", species: "Supella longipalpa", bio: "Entrepeneur looking for their partner in crumb", dowry: "a block of cheese", img_url: "https://gobioshield.com/wp-content/uploads/sites/2/2019/11/cockroach.jpg")
Cockroach.create(name: "Abe", location: "Trump Tower", species: "Periplaneta australasiae", bio: "Down to mate", dowry: "rock-hard, stale oreos", img_url: "https://i0.wp.com/go-forth.com/wp-content/uploads/2019/07/IS-THERE-ANYTHING-GOOD-ABOUT-COCKROACHES.jpg")
Cockroach.create(name: "Bonita", location: "Atlantic City", species: "Periplaneta fuliginosa)", bio: "Aspiring actress with a passion for small crevices", dowry: "a wedding fit for a queen", img_url: "https://cdn11.bigcommerce.com/s-kjx0e8hnh0/images/stencil/1280x1280/products/201/672/Hissingcockroach__23661.1495561947.jpg?c=2")
Cockroach.create(name: "Santa", location: "North Pole", species: "Periplaneta australasiae", bio:"I just want a human to cuddle with...", dowry:"Rudolph" , img_url: "https://i0.wp.com/lakenormanpest.com/wp-content/uploads/2019/06/How-do-Pest-Professionals-Kill-Cockroaches.jpg")
Cockroach.create(name: "Seaward", location: "Financial District, Sewer Line", species: "Blatta orientalis", bio:"I need to travel first class $$$", dowry:"A slice of pepperoni pizza" , img_url: "https://www.alfordhomesolutions.com/core/images/pest-control/cockroach/american/american-cockroach-lg.jpg")


User.create(name: "anonymous", age: 25, bio: "I like roaches", img_url: "afaf", preference: "roaches", password: "password")
