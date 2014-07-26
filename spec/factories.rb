FactoryGirl.define do
	factory :user do
		sequence(:email) {|n| "User #{n}"}
		sequence (:name) {|n| "email#{n}@test.com"} 
		password 'test'
		cohort 'Summer 2014'
		course 'Ruby on Rails'
		role 'Student'
	end
end
