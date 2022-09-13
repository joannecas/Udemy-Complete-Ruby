users = [
  { username: "name1", password: "password1" },
  { username: "name2", password: "password2" },
  { username: "name3", password: "password3" }
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user|
    if user[:username] == username && user[:password] == password
      return user
    end
    "Credentials were not correct"
  end
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts

attempts = 1

while attempts < 4
  # Login
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  authentication = auth_user(username, password, users)
  puts authentication

  # exit case 
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
    
  # attempts count
  attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 4



# puts "Enter username"
# input_username = gets.chomp

# users.each { |user, index| 
#   validUser = user[:username] == input_username
#   p validUser
#   if validUser
#       currentUser = user
#       break
#   else 
#     puts "Invalid username"
#     exit
#   end
# }

# puts "Enter password"
# input_password = gets.chomp

# if input_password == currentUser[:password]
#   puts "congrats!"
# else 
#   puts "Invalid password"
#   exit
# end

# puts "Launch program!"