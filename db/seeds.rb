# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 10.times do 
#         user = User.create!(
#           email: Faker::Internet.email,
#           password: "123456",
#           first_name: Faker::Name.first_name,
#           last_name: Faker::Name.last_name,
#           description: Faker::Hipster.paragraph
#         )
# end
    
french_cities = ["Paris", "Lyon", "Marseille", "Toulouse", "Nice", "Nantes", "Strasbourg", "Montpellier", "Bordeaux", "Lille"]
meetings = ["Casual meetup", "Networking event", "Social gathering", "Professional association event"]
    # Seed ten events with different titles, social gatherings, and meetup styles in French cities
10.times do
    Event.create!(
      title: meetings.sample,
      description: Faker::Lorem.paragraph,
      location: french_cities.sample,
      start_date: Faker::Time.between_dates(from: Date.today, to: Date.today + 30, period: :day),
      duration: rand(1..5) * 60,
      price: rand(0..100), 
      user: User.all.sample
      )
    end

10.times do
  attendee = Attendance.create(user: User.all.sample, event: Event.all.sample)
end