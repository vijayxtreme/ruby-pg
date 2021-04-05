class User 
    def initialize(name)
        @name = name
    end
    def run
        puts "Hey I'm running" 
    end 
end 

user = User.new("Vijay")
user1 = User.new("John")
user2 = User.new("Kevin")

#puts User.ancestors
puts user

user.run
user1.run
user2.run