module Destructable
  def destroy(anyObject)
    puts "I will destroy the object"
  end
end

class User 
    # adds all the methods from module
    include Destructable
    #shortcut for writing getters/setters
    attr_accessor :name, :email
    def initialize(name, email)
        @name = name
        @email = email
    end

    #getters/setters
    def get_name
        @name
    end
    def set_name=(name)
        @name = name
    end

    def run
        puts "Hey I'm running" 
    end 
end 

user = User.new("Vijay", "vijaymenonx@gmail.com")
# user1 = User.new("John")
# user2 = User.new("Kevin")

#puts User.ancestors
puts user

# user.run
# user1.run
# user2.run

#getter
# puts user.get_name
# user.set_name = "John"

# w/attr_accessor
# puts user.name
# user.name = "Winston"
# puts user.name

puts "My user's name is #{user.name} and my email is #{user.email}"

class Buyer < User
    def run
        puts "Hey I'm not running"
    end
    #class (Static) method
    def self.identify_self
        puts "Hey I am a class method"
    end

end

class Seller < User
end

class Admin < User
end

buyer1 = Buyer.new("John Doe", "johndoe1@example.com")
buyer1.run
Buyer.identify_self

user = User.new("Majin Boo", "majinboo@gmail.com")
user.destroy("myname")
