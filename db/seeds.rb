# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fruit1 = Fruit.new(
  name: "apple", 
  price: "1.00", 
  image: "https://loseitapp.files.wordpress.com/2014/09/istock_000014459318_double.jpg",
  description: "Crispy red fruit with sweet, tart flavor"
)
fruit1.save

fruit2 = Fruit.new(
  name: "pear", 
  price: "2.00", 
  image: "http://www.gourmetegypt.com/media/catalog/product/p/e/pear-imported-united_1.jpg",
  description: "Soft green juicy fruit with sweet, mellow flavor"
)
fruit2.save

fruit3 = Fruit.new(
  name: "banana", 
  price: ".20", 
  image: "http://static1.squarespace.com/static/571ab40be707ebff30747a74/571ab8c6d51cd4f1ca1cc0a5/571ab8c6d51cd4f1ca1cc0a6/1461369034949/banana-08.jpg?format=2500w",
  description: "long, peelable yellow fruit with soft, sweet, mellow interior"
)
fruit3.save

fruit4 = Fruit.new(
  name: "orange", 
  price: "1.50", 
  image: "http://kingofwallpapers.com/orange/orange-003.jpg",
  description: "round orange fruit with sweet, tangy, juicy sections"
)
fruit4.save



