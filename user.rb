class User 
    #shortcut for writing getters/setters
    attr_accessor :name
    def initialize(name)
        @name = name
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

user = User.new("Vijay")
user1 = User.new("John")
user2 = User.new("Kevin")

#puts User.ancestors
puts user

# user.run
# user1.run
# user2.run

#getter
# puts user.get_name
# user.set_name = "John"

# w/attr_accessor
puts user.name
user.name = "Winston"
puts user.name