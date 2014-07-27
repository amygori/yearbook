collection :@users
attributes :id, :name, :email, :bio, :twitter, :github,
           :linkedin, :course, :role, :cohort

node(:image) do |user|
    user.image.url unless user.image.nil?
end
