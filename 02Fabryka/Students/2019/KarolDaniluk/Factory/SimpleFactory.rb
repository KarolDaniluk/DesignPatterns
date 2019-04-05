require 'singleton'
require_relative 'vehicles_land'
require_relative 'vehicles_air'
require_relative 'vehicles_water'

class SimpleVehicleFactory
    #include Singleton

    def self.getLandVehicle(type)
        type.downcase!
        case type
        when 'sedan', 'car', 'audi'
            return Sedan.new
        when 'sport', 'bmw'
            return Sport.net
        when 'suv' , 'volvo'
            return SUV.new
        when 'motorcycle', 'motor', 'motorbike', 'suzuki'
            return Motorcycle.new
        when 'van', 'volkswagen'
            return Van.new
        when 'truck', 'lorry', 'man'
            return Truck.new
        when 'tank', 'challenger', 'challenger 2'
            return Tank.new
        else
            puts 'Unrecognized vehicle type. Here is your sedan car :)'
            return Sedan.new
        end
    end

    def self.getWaterVehicle(type)
        type.downcase!
        case type
        when 'container', 'cargo'
            return ContainerShip.new
        when 'cruise', 'travel'
            return CruiseShip.new
        when 'yacht'
            return Yacht.new
        when 'speedboat', 'speed'
            return Speedboat.new
        when 'carrier', 'aircraft carrier', 'stennis'
            return Carrier.new
        when 'ferry', 'stena spirit', 'stena', 'spirit'
            return Ferry.new
        else
            puts 'Unrecognized vehicle type. Here is your speedboat :)'
            return Speedboat.new
        end
    end
        
    def self.getAirVehicle(type)
        type.downcase!
        case type
        when 'fighter', 'fighterjet', 'fighter jet'
            return FighterJet.new
        when 'bomber', 'bomber jet'
            return Bomber.new
        when 'airliner', 'travel', 'boeing'
            return Airliner.new
        when 'cargoplane', 'cargo', 'transportation'
            return CargoPlane.new
        when 'light', 'avio', 'tourist'
            return LightPlane.new
        when 'helicopter', 'copter', 'chopper'
            return Helicopter.new
        else
            puts 'Unrecognized vehicle type. Here is your light plane :)'
            return LightPlane.new
        end
    end
end

mysliwiec = SimpleVehicleFactory.getAirVehicle 'fighter'
puts mysliwiec.info

a6 = SimpleVehicleFactory.getLandVehicle 'sedan'
puts a6.info

motorowka = SimpleVehicleFactory.getWaterVehicle 'speed'
puts motorowka.info


