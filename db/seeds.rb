@employee = Employee.create(email: "test@test.com",
                    password: "123456",
                    password_confirmation: "123456",
                    first_name: "John",
                    last_name: "Doe",
                    phone: "3858316582",
                    ssn: 1234,
                    company: "ABC Company")

puts "1 employee created"

AdminUser.create(email: "tia.fowers@gmail.com",
                  password: "123456",
                  password_confirmation: "123456",
                  first_name: "Admin",
                  last_name: "Name",
                  phone: "3858316582",
                  ssn: 1234,
                  company: "ABC Company")

puts "1 Admin user created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

100.times do |post|
  Post.create!(date: Date.today, work_performed: "#{post} work_performed content Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", user_id: @employee.id, daily_hours: 12.5)
end

puts "100 Posts have been created"