class User
	attr_accessor :name :email :id
	attr_arr = [{name: "Steven", email: "me@gmail.com", id: 13}, {name: "Emily", email: "Emily@gmail.com", id: 24}]
	def save_me c
		new_users = []
		c.each do |user|
			@new_user = User.create(name: user[:name], email: user[:email], id: user[:id])
			new_users << @new_user
		end
		new_users
	end
end