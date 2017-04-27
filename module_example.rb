module VehicleActions
    def brake
      @speed = 0
    end

    def accelerate
      @speed += 10
    end

    def turn(new_direction)
      @direction = new_direction
    end
end

class Vehicle
attr_reader :direction, :speed
    def initialize
      @speed = 0
      @direction = 'north'
    end

end

class Car < Vehicle
    include VehicleActions

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
    include VehicleActions
    
    def ring_bell
        puts "Ring ring!"
    end
end

bike = Bike.new
car = Car.new

bike.ring_bell
car.honk_horn
p car.accelerate
p bike.brake
p car.direction