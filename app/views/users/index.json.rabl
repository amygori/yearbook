collection :@users
attributes :id, :name, :email, :bio, :twitter, :github,
           :linkedin

node(:image) do |user|
  user.image.remote_url unless user.image.nil?
end

node(:role) do |user|
  user.role.position unless user.role.nil?
end

node(:course) do |user|
  user.course.name unless user.course.nil?
end

node(:cohort) do |user|
  user.cohort.to_s unless user.cohort.nil?
end
