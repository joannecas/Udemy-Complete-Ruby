class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  # default method available
  def to_s
    "First name: #{@first_name} \nLast name: #{@last_name} \nemail: #{@email} \nusername: #{@username}"
  end
end

student1 = Student.new("Sample", "McSampleson", "student1", "sample@test.com", "password")
student2 = Student.new("Test", "Testington", "test1", "test99@test.com", "password")

puts student1
puts student2