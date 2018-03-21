10.times do
  Item.create(
    title: Faker::Commerce.product_name,
    inventory: Faker::Number.number(2),
    price: Faker::Number.number(4)
  )
  Category.create(title: Faker::Commerce.department)
end

counter = 1
Item.all.each do |item|
  item.category_id = counter
  item.save
  counter += 1
end

User.create(
  name: 'One',
  password: 'password',
  email: 'test@email.com'
<<<<<<< HEAD
)
=======
)
>>>>>>> f2d0ebe1ce4cd6db8ffd8560e59c5c23c0b88676
