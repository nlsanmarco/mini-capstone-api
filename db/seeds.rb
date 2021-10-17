User.create!([
  { name: "Test name", email: "test@test.com", password_digest: "$2a$12$S.J8DvPoAjDGaUlhbpXR9.8E7WUAWtND9VskKf3VKKPMsqqduhwMC", admin: false },
  { name: "Minnie", email: "minnie@gmail.com", password_digest: "$2a$12$CXruqFVDYm1dXSVnugc74umOTsP66x4XECVagWipXltk3r4crz2wW", admin: false },
  { name: "Polly", email: "polly@gmail.com", password_digest: "$2a$12$3/kswrUAL6CBuNiV32Qsc.Md8ZOdLWc.7O3E4I2Zztc/2T0V.ltZ6", admin: true },
  { name: "Sabretooth", email: "sabretooth@gmail.com", password_digest: "$2a$12$TebJBrKJkKd.nMjClf/1te/.fjVXF2KWvhHlBaZMRdH5JnzQWB1M.", admin: false },
  { name: "Linus", email: "linus@gmail.com", password_digest: "$2a$12$SN84hG1FMNx8PE/TgCXpKemRihjvJLbKcbMYzzV/U3kMN.QPDus2O", admin: true },
])

Supplier.create!([
  { name: "Kong", email: "kong@gmail.com", phone_number: "111-2222" },
  { name: "Awesome Dog Toys Inc", email: "adt@gmail.com", phone_number: "333-4444" },
])

Product.create!([
  { name: "Leash", price: "25.0", description: "Bungee running dog leash, blue", inventory: 1, supplier_id: 1 },
  { name: "Soccer ball", price: "3.0", description: "Soccer Ball Dog Toy, Medium", inventory: 1, supplier_id: 2 },
  { name: "Tug toy", price: "10.0", description: "Entertain your dog for hours playing tug of war!!", inventory: 1, supplier_id: 2 },
  { name: "Water bowl", price: "15.0", description: "Stainless steel Dog water bowl, medium", inventory: 1, supplier_id: 1 },
  { name: "Collar", price: "14.0", description: "Designer Dog Collar, red and green", inventory: 3, supplier_id: 1 },
])

Image.create!([
  { url: "https://i.etsystatic.com/11831723/d/il/3c4b97/3212198244/il_340x270.3212198244_rrh5.jpg?version=0\n  ", product_id: 2 },
  { url: "https://cdn.shopify.com/s/files/1/1577/4333/products/Web-40354-Roamer-Leash-Blue-Atoll_600x600.jpg?v=1612467095", product_id: 1 },
  { url: "https://m.media-amazon.com/images/I/71khlHw6UVL._AC_SL1500_.jpg", product_id: 4 },
  { url: "https://m.media-amazon.com/images/I/614ctMvbfxL._AC_SL1200_.jpg", product_id: 3 },
  { url: "https://m.media-amazon.com/images/I/61mBXZiwiwL.jpg", product_id: 5 },
  { url: "https://www.prouddogmom.com/wp-content/uploads/2016/06/dogs-water-bowl.jpg", product_id: 5 },
  { url: "https://cdn11.bigcommerce.com/s-gjzevo/images/stencil/1280x1280/products/431/619/L1-blue-nylon-dog-leash__89173.1625067329.jpg?c=2", product_id: 1 },
  { url: "https://s7d5.scene7.com/is/image/PetsUnited/T497491AA?wid=328&hei=328", product_id: 3 },
])

Category.create!([
  { name: "Walks" },
  { name: "Playtime" },
  { name: "Dog Supplies" },
])

ProductCategory.create!([
  { product_id: 1, category_id: 1 },
  { product_id: 1, category_id: 3 },
  { product_id: 2, category_id: 1 },
  { product_id: 2, category_id: 3 },
  { product_id: 3, category_id: 2 },
  { product_id: 3, category_id: 3 },
  { product_id: 4, category_id: 2 },
  { product_id: 4, category_id: 3 },
  { product_id: 5, category_id: 3 },
])

CartedProduct.create!([
  { user_id: 2, product_id: 4, quantity: 3, status: "purchased", order_id: nil },
  { user_id: 3, product_id: 5, quantity: 1, status: "removed", order_id: nil },
  { user_id: 2, product_id: 4, quantity: 2, status: "purchased", order_id: 3 },
  { user_id: 3, product_id: 3, quantity: 1, status: "purchased", order_id: 7 },
  { user_id: 3, product_id: 3, quantity: 2, status: "purchased", order_id: 7 },
  { user_id: 3, product_id: 4, quantity: 1, status: "purchased", order_id: 7 },
  { user_id: 3, product_id: 4, quantity: 1, status: "purchased", order_id: 7 },
  { user_id: 3, product_id: 1, quantity: 3, status: "purchased", order_id: 7 },
  { user_id: 3, product_id: 2, quantity: 3, status: "purchased", order_id: 7 },
  { user_id: 3, product_id: 4, quantity: 3, status: "purchased", order_id: 7 },
  { user_id: 3, product_id: 4, quantity: 3, status: "purchased", order_id: 7 },
  { user_id: 3, product_id: 4, quantity: 3, status: "purchased", order_id: 7 },
  { user_id: 2, product_id: 3, quantity: 2, status: "removed", order_id: nil },
  { user_id: 2, product_id: 1, quantity: 2, status: nil, order_id: nil },
  { user_id: 2, product_id: 2, quantity: 2, status: "purchased", order_id: 8 },
  { user_id: 3, product_id: 4, quantity: 3, status: nil, order_id: nil },
  { user_id: 2, product_id: 1, quantity: 2, status: "removed", order_id: nil },
])

Order.create!([
  { user_id: 2, subtotal: "10.99", tax: "2.53", total: "13.52" },
  { user_id: 3, subtotal: "6.0", tax: "0.52", total: "6.52" },
  { user_id: 2, subtotal: "20.0", tax: "1.75", total: "21.75" },
  { user_id: 2, subtotal: "20.0", tax: "1.75", total: "21.75" },
  { user_id: 3, subtotal: "206.0", tax: "18.02", total: "224.02" },
  { user_id: 3, subtotal: "236.0", tax: "20.65", total: "256.65" },
  { user_id: 3, subtotal: "236.0", tax: "21.24", total: "257.24" },
  { user_id: 2, subtotal: "28.0", tax: "2.52", total: "30.52" },
  { user_id: 3, subtotal: "0.0", tax: "0.0", total: "0.0" },
])
