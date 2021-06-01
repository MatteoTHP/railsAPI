# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Article.destroy_all

10.times do
  User.create(email: Faker::Internet.safe_email, password: "azerty"
       
   )
 end

30.times do
 Article.create(title: Faker::DcComics.title, content: Faker::ChuckNorris.fact, user_id: User.all.sample.id,
      
  )
end