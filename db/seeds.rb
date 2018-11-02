# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.create(
  email: Faker::Internet.email,
  password_digest: Faker::Internet.password
)

20.times do
  List.create(
    kind: "todo",
    user_id: (rand() * 5 + 1).to_i
  )
end

20.times do
  Task.create(
    priority: "high",
    description: "I need to do this!",
    list_id: (rand() * 5 + 1).to_i
  )
end
