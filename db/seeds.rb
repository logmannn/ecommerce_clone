Product.destroy_all
OrderItem.destroy_all

50.times do |index|
  Product.create!(name: Faker::Vehicle.manufacture,
                        price: Faker::Number.decimal(2))
                        @product_id = Product.last.id
end
