# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
I18n.load_path += Dir[Rails.root.join('lib', 'locales', '*.yml')]
I18n.default_locale = :ca

User.populate 100 do |user|
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.email = Faker::Internet.email
    user.lat = Faker::Address.latitude
    user.lng = Faker::Address.longitude
end