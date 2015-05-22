# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
password = "appledore"

50.times do |n|
	user = User.new  
	user.name = Faker::Name.name
	user.email = Faker::Internet.email
	user.password = password
	user.password_confirmation = password
	user.encrypted_password = User.new(:password => password).encrypted_password
	user.alumni = true
	user.pursued = "B. Tech"
	user.YOJ = rand(8)+2008
	user.YOL = rand(4)+2012
	user.description = Faker::Lorem.paragraph
	user.current_designation = "manager"
	user.company_or_institution = Faker::Company.name
	user.phone = Faker::PhoneNumber.cell_phone
	user.blog_url = Faker::Internet.url
	user.dp_url = Faker::Company.logo
	user.ld_url = Faker::Internet.url('linkedin.com')
	user.save!
end