@user = User.create(email: "something@something.com", password: "123456", password_confirmation: "123456", first_name: "Tia", last_name: "Fowers")

puts "1 User Created"
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"