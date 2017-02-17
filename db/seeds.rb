@user = User.create(email: "something@something.com", password: "123456", password_confirmation: "123456", first_name: "Tia", last_name: "Fowers")

puts "1 User Created"

AdminUser.create(email: "admin@test.com", password: "123456", password_confirmation: "123456", first_name: "Admin", last_name: "User")

puts "1 Admin User Created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"