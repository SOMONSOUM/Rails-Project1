# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times.each do
    c=Category.create(
        category_name: ["Car"].sample,
    )
    p=Product.create(
        product_name: Faker::Food.dish,
        product_qty: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].sample,
        category: c
    )
end
