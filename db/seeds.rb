Supplier.create!([
  { name: "Kong", email: "kong@gmail.com", phone_number: "111-2222" },
  { name: "Awesome Dog Toys Inc", email: "adt@gmail.com", phone_number: "333-4444" },
])

Product.create!([
  { name: "Leash", price: "25.0", image_url: "https://cdn.shopify.com/s/files/1/1577/4333/products/Web-40354-Roamer-Leash-Blue-Atoll_600x600.jpg?v=1612467095", description: "Bungee running dog leash, blue", inventory: 1, supplier_id: 1 },
  { name: "Collar", price: "14.0", image_url: "https://i.etsystatic.com/11831723/d/il/3c4b97/3212198244/il_340x270.3212198244_rrh5.jpg?version=0", description: "Designer Dog Collar, red and green", inventory: 1, supplier_id: 1 },
  { name: "Soccer ball", price: "3.0", image_url: "https://m.media-amazon.com/images/I/614ctMvbfxL._AC_SL1200_.jpg", description: "Soccer Ball Dog Toy, Medium", inventory: 1, supplier_id: 2 },
  { name: "Tug toy", price: "10.0", image_url: "https://m.media-amazon.com/images/I/71khlHw6UVL._AC_SL1500_.jpg", description: "Entertain your dog for hours playing tug of war!!", inventory: 1, supplier_id: 2 },
  { name: "Water bowl", price: "15.0", image_url: "https://m.media-amazon.com/images/I/61mBXZiwiwL.jpg", description: "Stainless steel Dog water bowl, medium", inventory: 1, supplier_id: 1 },
])
