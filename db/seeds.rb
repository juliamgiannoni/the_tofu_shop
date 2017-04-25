Category.destroy_all
Product.destroy_all

products = Product.create([{
  product_name: "Bandana",
  product_price: 7,
  product_image: "accessories_bandana.png",
  product_description: "This is the bandana description."
  }, {
  product_name: "Green Bow",
  product_price: 5,
  product_image: "accessories_greenbow.png",
  product_description: "This is the green bow description."
  }, {
  product_name: "Lion Mane",
  product_price: 15,
  product_image: "accessories_lionmane.png",
  product_description: "This is the lion mane description."
  }, {
  product_name: "Christmas Collar",
  product_price: 12,
  product_image: "accessories_christmascollar.png",
  product_description: "This is the Christmas collar description."
  }, {
  product_name: "Banana Boat Bed",
  product_price: 35,
  product_image: "bed_bananaboat.png",
  product_description: "This is the banana boat bed description."
  }, {
  product_name: "Dog Bed",
  product_price: 30,
  product_image: "bed_dog.png",
  product_description: "This is the dog bed description."
  }, {
  product_name: "Puppy Bed",
  product_price: 25,
  product_image: "bed_puppy.png",
  product_description: "This is the puppy bed description."
  }, {
  product_name: "Blue Hoodie",
  product_price: 20,
  product_image: "clothing_bluehoodie.png",
  product_description: "This is the blue hoodie description."
  }, {
  product_name: "Christmas Sweater",
  product_price: 40,
  product_image: "clothing_christmassweater.png",
  product_description: "This is the Christmas sweater description."
  }, {
  product_name: "Dr. Strange Costume",
  product_price: 45,
  product_image: "clothing_drstrange.png",
  product_description: "This is the Dr. Strange costume description."
  }, {
  product_name: "Purple Hoodie",
  product_price: 20,
  product_image: "clothing_purplehoodie.png",
  product_description: "This is the purple hoodie description."
  }, {
  product_name: "Alphabet Letter Blocks",
  product_price: 13,
  product_image: "home_letterblocks.png",
  product_description: "This is the letter blocks description."
  }, {
  product_name: "Letter Board",
  product_price: 40,
  product_image: "home_letterboard.png",
  product_description: "This is the letter board description."
  }, {
  product_name: "SoCal Corgi Nation Flag",
  product_price: 33,
  product_image: "misc_corgiflag.png",
  product_description: "This is the SoCal Corgi Nation flag description."
  }, {
  product_name: "iPhone Case",
  product_price: 25,
  product_image: "misc_iphonecase.png",
  product_description: "This is the iPhone case description."
  }, {
  product_name: "Stickers",
  product_price: 3,
  product_image: "misc_sticker.png",
  product_description: "This is the stickers description."
  }, {
  product_name: "Soft Tofu",
  product_price: 7,
  product_image: "misc_tofu.png",
  product_description: "This is the soft tofu description."
  }, {
  product_name: "Corgi Plush Toy",
  product_price: 18,
  product_image: "toys_corgiplush.png",
  product_description: "This is the corgi plush toy description."
  }, {
  product_name: "Pizza Plush Toy",
  product_price: 12,
  product_image: "toys_pizza.png",
  product_description: "This is the pizza plush toy description."
  }, {
  product_name: "Blue Rope Toy",
  product_price: 6,
  product_image: "toys_rope.png",
  product_description: "This is the blue rope toy description."
  }, {
  product_name: "Unicorgi Plush Toy",
  product_price: 15,
  product_image: "toys_unicorgi.png",
  product_description: "This is the unicorgi plush toy description."
  }])

categories = Category.create([
  { category_name: "Accessories" },
  { category_name: "Beds" },
  { category_name: "Clothing" },
  { category_name: "Home" },
  { category_name: "Miscellaneous" },
  { category_name: "Toys" }
])





