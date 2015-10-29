# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# I18n.load_path += Dir[Rails.root.join('lib', 'locales', '*.yml')]
# I18n.default_locale = :ca

skill_list = [
  "start-ups",
  "marketing",
  "programming",
  "web programming",
  "Ruby",
  "JavaScript",
  "AngularJS",
  "Python",
  "PHP",
  "HTML/CSS",
  "jQuery",
  "Ruby on Rails",
  "Django",
  "Node.js",
  "CoffeeScript",
  "Ember.js",
  "Backbone.js",
  "Meteor",
  "Flask",
  "Scala",
  "code",
  "Ruby",
  "JavaScript",
  "PHP",
  "Python",
  "Java",
  "C#",
  "C++",
  "Go",
  "C",
  ".NET",
  "Haskell",
  "Perl",
  "Erlang",
  "Matlab",
  "Debugging",
  "Crystal",
  "mobile app programming",
  "iOS",
  "Android",
  "Swift",
  "PhoneGap",
  "Cordova",
  "Ionic",
  "Titanium",
  "Sencha",
  "database and operation",
  "Server",
  "DevOps",
  "MySQL",
  "SQL",
  "MongoDB",
  "Hadoop",
  "Apache",
  "Linux",
  "AWS",
  "Heroku",
  "Database",
  "Security",
  "Azure",
  "photography",
  "design",
  "web design",
  "HTML/CSS",
  "Sass",
  "Twitter bootstrap",
  "Famo.us",
  "Kendo UI",
  "Responsive design",
  "Foundation",
  "Photoshop",
  "development process and tools",
  "Git",
  "WordPress",
  "Drupal",
  "Joomla",
  "SEO",
  "Vim",
  "Bower",
  "Machine learning",
  "Xcode",
  "Jenkins",
  "Interior design",
  "Graphic design",
  "UI design",
  "UX design",
  "Fashion design",
  "photography",
  "music",
  "DJ",
  "food",
  "dance",
  "sports",
  "fitness",
  "yoga",
  "language",
  "English",
  "French",
  "Japanese",
  "Cantonese",
  "Mandarin Chinese",
  "Spanish",
  "Hindi",
  "Arabic",
  "Portuguese",
  "Russian",
  "Punjabi",
  "German",
  "Telugu",
  "Vietnamese",
  "Korean",
  "Foosball",
  "Basketball",
  "Soccer",
  "Baseball",
  "Rugby",
  "Badminton",
  "Football",
]

skills = skill_list.map do |name|
  Skill.create(skill_name: name)
end


User.populate 200 do |user|
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.email = Faker::Internet.email
    user.latitude = rand(49.201168..49.274245)
    user.longitude = rand(-123.251152..-122.905083)
    user.number = rand(7789900113..7789900120)
end

User.all.each do |user|
  user.skills << skills.sample
end


User.import force: true