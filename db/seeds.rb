# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."

Article.destroy_all
User.destroy_all


puts "Creating users..."
user1 = User.new(password: "password", email: "ludo@bbgc.com", admin: true, first_name: "Ludovic", last_name:"Hochet")
user2 = User.new(password: "password", email: "gef@bbgc.com", admin: true, first_name: "Gérard", last_name:"Hochet")


[ user1, user2 ].each do |user|
  user.save
  puts "Created #{user.email}"
end

article1 = Article.new(title:"#{Faker::Lorem.word}", content: "#{Faker::Lorem.paragraph(sentence_count: 25)}", category: "news")
article2 = Article.new(title:"#{Faker::Lorem.word}", content: "#{Faker::Lorem.paragraph(sentence_count: 45)}", category: "résultats")
article3 = Article.new(title:"#{Faker::Lorem.word}", content: "#{Faker::Lorem.paragraph(sentence_count: 55)}", category: "strategie")
article4 = Article.new(title:"#{Faker::Lorem.word}", content: "#{Faker::Lorem.paragraph(sentence_count: 37)}", category: "article")


[ article1, article2, article3, article4 ].each do |article|
  article.save
  puts "Created #{article.title}"
end



puts "Finished..."
