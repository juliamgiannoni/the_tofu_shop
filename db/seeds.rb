LineItem.destroy_all
Product.destroy_all
Category.destroy_all

categories = Category.create([
  { category_name: "Accessories" },
  { category_name: "Beds" },
  { category_name: "Clothing" },
  { category_name: "Home" },
  { category_name: "Miscellaneous" },
  { category_name: "Toys" }
])

products = Product.create([{
  product_name: "Bandana",
  product_price: 7,
  product_image: "accessories_bandana.png",
  product_description: "Floof protector, timeless fashion accessory, headscarf, makeshift cape - whatever you call a bandana, you've never seen one like this. Featuring a paisley accent and a screen print of your dog's name, this bandana is perfect for identifying your pet in a crowd.",
  category: categories[0]
  }, {
  product_name: "Green Bow",
  product_price: 5,
  product_image: "accessories_greenbow.png",
  product_description: "For those times that you want your pup to make an impression, this green sequin bow is ideal for pairing with a doggy tuxedo and top hat. Also makes for a great St. Patty's Day costume if you're into that sort of thing.",
  category: categories[0]
  }, {
  product_name: "Lion Mane",
  product_price: 15,
  product_image: "accessories_lionmane.png",
  product_description: "We'd by lion if we said this isn't one of the best animals-dressed-as-other-animals costumes ever! Let your dog channel their inner teenage Simba or brown furry Mickey Mouse. Either way, you're guaranteed to get a ton of Instagram likes and a ton of shade from your doggo.",
  category: categories[0]
  }, {
  product_name: "Christmas Collar",
  product_price: 12,
  product_image: "accessories_christmascollar.png",
  product_description: "It's never too soon to celebrate Christmas! Embrace the holiday spirit with this polka-dotted red, white and green collar. Small bells attached to the tips also mean that your furry best friend can really jingle all the way... everywhere... at all hours of the night.",
  category: categories[0]
  }, {
  product_name: "Banana Boat Bed",
  product_price: 35,
  product_image: "bed_bananaboat.png",
  product_description: "Ba-ba-ba-ba-banana. Let your pup experience their sweetest sleep yet with a bed shaped like a banana shaped like a boat. Disclaimer: Should not attempt to be used as a floatation device. We claim no responsibility for sunken banana boats.",
  category: categories[1]
  }, {
  product_name: "Dog Bed",
  product_price: 30,
  product_image: "bed_dog.png",
  product_description: "Comfy bed. Good for sleeps. ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ.",
  category: categories[1]
  }, {
  product_name: "Puppy Bed",
  product_price: 25,
  product_image: "bed_puppy.png",
  product_description: "Comfy small bed. Good for small sleeps. zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz.",
  category: categories[1]
  }, {
  product_name: "Blue Hoodie",
  product_price: 20,
  product_image: "clothing_bluehoodie.png",
  product_description: "Sweat pants, hair tied, chillin' with a hoodie on. That's when you're the prettiest. I hope that you don't take it wrong.",
  category: categories[2]
  }, {
  product_name: "Christmas Sweater",
  product_price: 40,
  product_image: "clothing_christmassweater.png",
  product_description: "Win your office's ugly Christmas sweater competition by showing up with your sweater-clad pup. Features red string lights, non-color coordinated ornaments and 3D orange bows against a bright green base. Game, set, match.",
  category: categories[2]
  }, {
  product_name: "Dr. Strange Costume",
  product_price: 45,
  product_image: "clothing_drstrange.png",
  product_description: "Do you like superheros? Are you a Buttercup Cumbersnatch fan? Did you always imagine that Regina George would become a surgeon? If so, this Dr. Strange costume is for you(r dog)! Levitating powers and time-bending abilities not included.",
  category: categories[2]
  }, {
  product_name: "Purple Hoodie",
  product_price: 20,
  product_image: "clothing_purplehoodie.png",
  product_description: "Because there's no better way to show off how up-to-date your dog is on the latest athleisure trend than by rocking this purple hoodie. Comes in a sleeveless design to ensure full mobility of their front half.",
  category: categories[2]
  }, {
  product_name: "Alphabet Letter Blocks",
  product_price: 23,
  product_image: "home_letterblocks.png",
  product_description: "Your favorite childhood toy just became life-size! Let's hope you actually know how to spell. And contrary to popular belief, these blocks are not made out of tofu.",
  category: categories[3]
  }, {
  product_name: "Letter Board",
  product_price: 40,
  product_image: "home_letterboard.png",
  product_description: "The only letter board you'll ever need to make a statement - literally. Tell your fluffy (or non-fluffy) pal how much they mean to you, unless their name is Taylor Swift.",
  category: categories[3]
  }, {
  product_name: "SoCal Corgi Nation Flag",
  product_price: 33,
  product_image: "misc_corgiflag.png",
  product_description: "When the California Bear Flag is a little too #basic for your taste, hang up this SoCal Corgi Nation flag instead. Dimensions are 2 corgis long by 1 corgi wide.",
  category: categories[3]
  }, {
  product_name: "iPhone Case",
  product_price: 25,
  product_image: "misc_iphonecase.png",
  product_description: "Show off your love for corgis while pretending to text during socially awkward situations. The corgi decal is printed on a clear case so the iPhone logo is still visible, for all you Apple purists.",
  category: categories[4]
  }, {
  product_name: "Stickers",
  product_price: 3,
  product_image: "misc_sticker.png",
  product_description: "Stick them on your water bottle, your laptop, your car window, or your vintage Lisa Frank sticker album. Stick them on the back of street signs - free publicity for us! Just don't ask us to bail you out of jail for vandalism. You're on your own, bud.",
  category: categories[4]
  }, {
  product_name: "Soft Tofu",
  product_price: 7,
  product_image: "misc_tofu.png",
  product_description: "Because tofu is good in both dog and food form. Each package of soft tofu is purchased daily from the Korean market down the street and can be used in stews, stir fries, curries, burgers, etc. or to confuse dogs named Tofu.",
  category: categories[4]
  }, {
  product_name: "Corgi Plush Toy",
  product_price: 18,
  product_image: "toys_corgiplush.png",
  product_description: "Meet Tofu Jr. Her hobbies include sitting completely still, being round and staring into your soul with her flat eyes. ",
  category: categories[5]
  }, {
  product_name: "Pizza Plush Toy",
  product_price: 12,
  product_image: "toys_pizza.png",
  product_description: "Do you know the difference between this pizza and your opinion? I asked for the pizza.",
  category: categories[5]
  }, {
  product_name: "Blue Rope Toy",
  product_price: 6,
  product_image: "toys_rope.png",
  product_description: "Guaranteed to last at least 4.5 months before becoming a shredded, soggy pile of blue thread.",
  category: categories[5]
  }, {
  product_name: "Unicorgi Plush Toy",
  product_price: 15,
  product_image: "toys_unicorgi.png",
  product_description: "Hop on the unicorn-everything trend with a unicorgi plush toy that features a blue or purple horn. Or maybe it's a small swirly party hat? *shrug emoji*",
  category: categories[5]
  }])
