# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# (1..10).each do |i|
# 	u = User.create(email: "user#{i}@example.com", password: '123456')
# 	u.save
# 	u.profile.create(first_name: 'salman', last_name: "haseeb_#{i}")
# 	(1..5).each do |j|
# 		s = u.services.create(title: 'I will do cleaning', category: 'cleaning', description: 'this is description')
# 		s.save
# 		s.packages.create(name: "Basic", description: "aaaa", delivery_time: 2, revisions: 2, price: 5 )
# 	end
# end
AdminUser.create!(email: 'admin@resn.com', password: '12345resn', password_confirmation: '12345resn')