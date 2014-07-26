# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |n|
	User.create(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: 'test',
		twitter: "@user1#{n}",
		github: "ghuser1#{n}",
		linkedin: "liuser1#{n}",
		course: "Ruby on Rails",
		cohort: "Summer 2014",
		bio: Faker::Lorem.paragraph,
		admin: false,
		role: "Student")
end

10.times do |n|
	User.create(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: 'test',
		twitter: "@user2#{n}",
		github: "ghuser2#{n}",
		linkedin: "liuser2#{n}",
		course: "Front End",
		cohort: "Summer 2014",
		bio: Faker::Lorem.paragraph,
		admin: false,
		role: "Student")
end

2.times do |n|
	User.create(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: 'test',
		twitter: "@user3#{n}",
		github: "ghuser3#{n}",
		linkedin: "liuser3#{n}",
		course: "Ruby on Rails",
		cohort: "Summer 2014",
		bio: Faker::Lorem.paragraph,
		admin: false,
		role: "Teacher")
end

2.times do |n|
	User.create(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: 'test',
		twitter: "@user4#{n}",
		github: "ghuser4#{n}",
		linkedin: "liuser4#{n}",
		course: "Front End",
		cohort: "Summer 2014",
		bio: Faker::Lorem.paragraph,
		admin: false,
		role: "Teacher")
end

3.times do |n|
	User.create(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: 'test',
		twitter: "@user5#{n}",
		github: "ghuser5#{n}",
		linkedin: "liuser5#{n}",
		course: "None",
		cohort: "Summer 2014",
		bio: Faker::Lorem.paragraph,
		admin: false,
		role: "Staff")
end

Cohort.create(
	season: 'Summer',
	year: '2014')

Cohort.create(
	season: 'Fall',
	year: '2014')

Course.create(
	name: 'Ruby on Rails')

Course.create(
	name: 'Front End')

roles = ['Student', 'Teacher', 'Staff']
roles.each do |role|
	Role.create(
		position: role)
end