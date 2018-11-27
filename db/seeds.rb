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
  password_digest: Faker::Internet.password,
  lists_completed: 0,
  tasks_completed: 0,
  username: Faker::Internet.username,
  name: Faker::FunnyName.name
)


List.create(
    kind: "Gratitude",
    done: true,
    user_id: 1,
    time_completed: "2018-11-14T17:54:55.387Z"
  )


List.create(
    kind: "Bucketlist",
    done: true,
    user_id: 1,
    time_completed: "2018-11-10T17:54:55.387Z"
  )


List.create(
    kind: "Today I need to",
    done: true,
    user_id: 1,
    time_completed: "2018-11-03T17:54:55.387Z"
  )

20.times do
    Task.create(
    list_id: rand(5),
    priority: "low",
    description: "go go",
    done: false
  )
end
