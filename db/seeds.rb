Supplier.create!([
  {name: "Tropical Fruits Co.", email: "Info@TPC.com", phone: "800-239-1928"},
  {name: "Washington Apple Grove", email: "Info@WashingtonApples.com", phone: "800-703-2384"},
  {name: "Going Bananas Co.", email: "Info@Bananas.com", phone: "800-555-3325"},
  {name: "All American Fruit Co.", email: "AAFC@Fruits.com", phone: "708-342-4532"},
  {name: "Berry King Ltd.", email: "Berries@Berrygold.com", phone: "349-983-1294"}
])

Fruit.create!([
  {name: "Mango", price: "2.69", description: "Sweet, tender tropical fruit with colorful skin and juicy, fibrous orange flesh", availability: true, supplier_id: (Supplier.find_by(name: "Tropical Fruits Co.")).id},
  {name: "Blueberry", price: "4.99", description: "delightful indigo-colored berry with mysterious, bold flavor.", availability: true, supplier_id: (Supplier.find_by(name: "Berry King Ltd.")).id},
  {name: "Raspberry", price: "5.99", description: "soft red berry with delightful, delicate texture", availability: true, supplier_id: (Supplier.find_by(name: "Berry King Ltd.")).id},
  {name: "Papaya", price: "1.49", description: "Tropical fruit with colorful skin and black seeds", availability: true, supplier_id: (Supplier.find_by(name: "Tropical Fruits Co.")).id},
  {name: "apple", price: "1.29", description: "Crunchy red fruit with sweet, tart flavor", availability: true, supplier_id: (Supplier.find_by(name: "Washington Apple Grove")).id},
  {name: "banana", price: "0.3", description: "long, peelable yellow fruit with soft, sweet, mellow interior", availability: true, supplier_id: (Supplier.find_by(name: "Going Bananas Co.")).id},
  {name: "Watermelon", price: "3.99", description: "juicy melon with red flesh", availability: true, supplier_id: (Supplier.find_by(name: "Washington Apple Grove")).id},
  {name: "Starfruit", price: "1.49", description: "Fresh, crispy fruit with star-shaped slices", availability: true, supplier_id: (Supplier.find_by(name: "Tropical Fruits Co.")).id},
  {name: "Peach", price: "0.49", description: "Fragrant, delicious pink fruit with fuzzy exterior", availability: true, supplier_id: (Supplier.find_by(name: "Washington Apple Grove")).id},
  {name: "Lychee", price: "4.89", description: "small, sweet, juicy, white fruit in rough, peelable shell", availability: true, supplier_id: (Supplier.find_by(name: "Berry King Ltd.")).id},
  {name: "Honeydew", price: "2.99", description: "sweet, tender melon with light green yellow flesh", availability: true, supplier_id: (Supplier.find_by(name: "All American Fruit Co.")).id},
  {name: "Logan Berry", price: "6.99", description: "Long hexaploid berry with burgundy color", availability: true, supplier_id: (Supplier.find_by(name: "Berry King Ltd.")).id},
  {name: "pineapple", price: "2.99", description: "Tropical fruit with juicy, tangy flavor", availability: true, supplier_id: (Supplier.find_by(name: "Tropical Fruits Co.")).id},
  {name: "pear", price: "0.79", description: "Soft, juicy green fruit with sweet, mellow flavor", availability: true, supplier_id: (Supplier.find_by(name: "All American Fruit Co.")).id},
  {name: "orange", price: "0.99", description: "round orange fruit with sweet, tangy, juicy sections", availability: true, supplier_id: (Supplier.find_by(name: "All American Fruit Co.")).id},
  {name: "cantaloupe", price: "3.5", description: "fragrant, juicy orange-fleshed melon with rough exterior", availability: true, supplier_id: (Supplier.find_by(name: "Washington Apple Grove")).id},
  {name: "grapes", price: "4.29", description: "Delicious purple fruits in bunches, grown on the vine.", availability: true, supplier_id: (Supplier.find_by(name: "Washington Apple Grove")).id},
  {name: "Plantain", price: "0.59", description: "Larger, milder version of a banana", availability: true, supplier_id: (Supplier.find_by(name: "Going Bananas Co.")).id}
])

fruits = Fruit.all
image_urls = [
  "http://mangomaniafl.net/wp-content/uploads/2014/06/iStock_000012591574Medium.jpg", 
  "http://kingofwallpapers.com/blueberry/blueberry-003.jpg",
  "http://www.raspberries.us/three-raspberries-636.jpg",
  "http://perfectimage-llc.com/wp-content/uploads/2015/08/papaya.jpg",
  "https://loseitapp.files.wordpress.com/2014/09/istock_000014459318_double.jpg",
  "http://static1.squarespace.com/static/571ab40be707ebff30747a74/571ab8c6d51cd4f1ca1cc0a5/571ab8c6d51cd4f1ca1cc0a6/1461369034949/banana-08.jpg?format=2500w",
  "https://www.organicfacts.net/wp-content/uploads/2013/05/watermelon2.jpg",
  "http://kauaiseascapesnursery.com/wp-content/uploads/2015/03/starfruit.jpg",
  "http://c3.thejournal.ie/media/2013/01/roald-dahl-giant-peach-2-390x285.jpg",
  "https://vespertunes.files.wordpress.com/2015/11/1_lichee.jpg",
  "http://www.rockyfordgrowersassociation.com/wp-content/uploads/2013/08/hdew.jpg",
  "http://www.foodsubs.com/Photos/loganberries3.jpg",
  "http://edengourmet.com/wp-content/uploads/2014/11/Pineapple_Garden_of_Eden1.jpg",
  "http://www.gourmetegypt.com/media/catalog/product/p/e/pear-imported-united_1.jpg", 
  "http://kingofwallpapers.com/orange/orange-003.jpg",
  "http://divineflavor.com/wp-content/uploads/2014/05/melon-cantaloupejpg.png", 
  "http://www.nutritious-food.com/wp-content/uploads/2016/01/grapes-02.jpg", 
  "https://upload.wikimedia.org/wikipedia/commons/1/19/Plantain-Yellow.jpg",
  "http://bingsbobatea.com/wp-content/uploads/2015/12/fr00016.jpg"
  ]

image_index = 0  
fruits.each do |fruit|
  Image.create!({url: image_urls[image_index], fruit_id: fruit.id})
  image_index += 1
end  


# Image.create!([
#   {url: "https://www.organicfacts.net/wp-content/uploads/2013/05/watermelon2.jpg", fruit_id: 21},
#   {url: "http://kingofwallpapers.com/blueberry/blueberry-003.jpg", fruit_id: 16},
#   {url: "http://kauaiseascapesnursery.com/wp-content/uploads/2015/03/starfruit.jpg", fruit_id: 17},
#   {url: "http://c3.thejournal.ie/media/2013/01/roald-dahl-giant-peach-2-390x285.jpg", fruit_id: 19},
#   {url: "http://edengourmet.com/wp-content/uploads/2014/11/Pineapple_Garden_of_Eden1.jpg", fruit_id: 20},
#   {url: "https://vespertunes.files.wordpress.com/2015/11/1_lichee.jpg", fruit_id: 10},
#   {url: "http://www.gourmetegypt.com/media/catalog/product/p/e/pear-imported-united_1.jpg", fruit_id: 2},
#   {url: "http://kingofwallpapers.com/orange/orange-003.jpg", fruit_id: 4},
#   {url: "http://www.raspberries.us/three-raspberries-636.jpg", fruit_id: 15},
#   {url: "http://www.foodsubs.com/Photos/loganberries3.jpg", fruit_id: 18},
#   {url: "http://www.rockyfordgrowersassociation.com/wp-content/uploads/2013/08/hdew.jpg", fruit_id: 22},
#   {url: "http://divineflavor.com/wp-content/uploads/2014/05/melon-cantaloupejpg.png", fruit_id: 23},
#   {url: "http://mangomaniafl.net/wp-content/uploads/2014/06/iStock_000012591574Medium.jpg", fruit_id: 6},
#   {url: "http://www.nutritious-food.com/wp-content/uploads/2016/01/grapes-02.jpg", fruit_id: 24},
#   {url: "http://perfectimage-llc.com/wp-content/uploads/2015/08/papaya.jpg", fruit_id: 26},
#   {url: "https://loseitapp.files.wordpress.com/2014/09/istock_000014459318_double.jpg", fruit_id: 1},
#   {url: "http://static1.squarespace.com/static/571ab40be707ebff30747a74/571ab8c6d51cd4f1ca1cc0a5/571ab8c6d51cd4f1ca1cc0a6/1461369034949/banana-08.jpg?format=2500w", fruit_id: 3},
#   {url: "http://bingsbobatea.com/wp-content/uploads/2015/12/fr00016.jpg", fruit_id: 1},
#   {url: "https://upload.wikimedia.org/wikipedia/commons/1/19/Plantain-Yellow.jpg", fruit_id: 27}
# ])

User.create!([
  {name: "Karen", email: "karenjxliu@hotmail.com", password_digest: "$2a$10$iWRCjL/FaeWlCSGt937Rv.WJMYMW6e5n66TKwqhUdTk0NhJ9ueCxe"},
  {name: "Alex", email: "Alex@gmail.com", password_digest: "$2a$10$r0b6YOyxpV5nSWWJJwkSMO0LrxDSw2mZGWEq/8WO8zRiXRbjCXNte"}
])
