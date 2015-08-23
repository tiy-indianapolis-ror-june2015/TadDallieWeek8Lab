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
    permalink: Faker::Internet.slug(
      Faker::Lorem.words(4), '-')
    file: http://placecage.com/200/300
    )
    user.product << product
  end
  
end
