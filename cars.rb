class CarFactory

    def compact factory
      factory.compact
    end
  
    def midsize factory
      factory.midsize
    end
  
    def fullsize factory
      factory.fullsize
    end
  
    def truck factory
      factory.truck
    end
  
    def van factory
      factory.van
    end
  end
  
  class Honda
    attr_accessor :lineup
  
    def initialize
      @lineup  = {
        compact: "Fit",
        midsize: "Civic",
        fullsize: "Accord",
        truck: "Ridgeline",
        van: "Element"
      }
    end
  
    def compact
      @lineup[:compact]
    end
  
    def midsize
      @lineup[:midsize]
    end
  
    def fullsize
      @lineup[:fullsize]
    end
  
    def truck
      @lineup[:truck]
    end
  
    def van
      @lineup[:van]
    end
  end
  
  class Toyota
    attr_accessor :lineup
  
    def initialize
      @lineup  = {
        compact: "Yaris",
        midsize: "Corolla",
        fullsize: "Camry",
        truck: "Tundra",
        van: "Sienna"
      }
    end
  
    def compact
      @lineup[:compact]
    end
  
    def midsize
      @lineup[:midsize]
    end
  
    def fullsize
      @lineup[:fullsize]
    end
  
    def truck
      @lineup[:truck]
    end
  
    def van
      @lineup[:van]
    end
  end
  
  class Nissan
    attr_accessor :lineup
  
    def initialize
      @lineup  = {
        compact: "Versa",
        midsize: "Sentra",
        fullsize: "Altima",
        truck: "Titan",
        van: "NV Passenger"
      }
    end
  
    def compact
      @lineup[:compact]
    end
  
    def midsize
      @lineup[:midsize]
    end
  
    def fullsize
      @lineup[:fullsize]
    end
  
    def truck
      @lineup[:truck]
    end
  
    def van
      @lineup[:van]
    end
  end
  
  def run factories
    carFactory = CarFactory.new
  
    p "Welcome to the car selector. We'll help you learn what models various brands offer in your selected class of vehicle. Currently only Japanese brands are available, and we only maintain a limited portion of the lineup for each brand."
  
    loop do
      p "Which car class are you interested in? 1) compact; 2) midsize; 3) fullsize; 4) truck; 5) van; 6) exit or quit"
      carClass = gets
  
      factories.each do |factory|
        case carClass[0].downcase
        when "1", "c"
          p "#{factory.class} #{carFactory.compact factory}"
        when "2", "m"
          p "#{factory.class} #{carFactory.midsize factory}"
        when "3", "f"
          p "#{factory.class} #{carFactory.fullsize factory}"
        when "4", "t"
          p "#{factory.class} #{carFactory.truck factory}"
        when "5", "v"
          p "#{factory.class} #{carFactory.van factory}"
        when "6", "e", "q"
          p "Thanks for using the car selector!"
          exit 0
        else
          p "I don't know what that means."
        end
      end
    end
  end
  
  run [Honda.new, Toyota.new, Nissan.new]