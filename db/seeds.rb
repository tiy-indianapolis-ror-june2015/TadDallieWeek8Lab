10.times do |n|
    password = Faker::Internet.password(8)
    user = User.create!(
    email: Faker::Internet.email,
    password: password
    )
  end
    5.times do |n|
    product.create!(
    name: Faker::Commerce.product_name
    price: Faker::Commerce.price
    description: Faker::Lorem.sentence
    file: "crazy_cage.jpg"
    )
    user.product << product
  end

end
