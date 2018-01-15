# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
meetup = Meetup.find_by(name: 'Boston ReactJS')
if meetup.nil?
  Meetup.create!({
    name: 'Boston ReactJS',
    description: 'The coolest city to learn React in',
    city: 'Boston',
    state: 'MA'
  })
end

other_meetup = Meetup.find_by(name: 'Boston VueJS')
if other_meetup.nil?
  Meetup.create!({
    name: 'Boston VueJS',
    description: 'The second best framework in still the coolest city',
    city: 'Boston',
    state: 'MA'
  })
end

