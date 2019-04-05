require 'singleton'

require_relative 'vehicles_land'
require_relative 'vehicles_air'
require_relative 'vehicles_water'


module VehicleFactory
    def getVehicle()
        raise NotImplementedError
    end
end


class LandVehicleFactory
    include VehicleFactory
    include Singleton
    def getVehicle(type)
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
end


class WaterVehicleFactory
    include VehicleFactory
    include Singleton
    def getVehicle(type)
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
end


class AirborneVehicleFactory
    include VehicleFactory
    include Singleton
    def getVehicle(type)
        type.downcase!
        case type
        when 'fighter', 'fighterjet', 'fighter jet'
            return FighterJet.new
        when 'bomber'
            return Bomber.new
        when 'airliner', 'travel', 'boeing'
            return Airliner.new
        when 'cargoplane', 'cargo', 'transportation'
            return CargoPlane.new
        when 'light', 'avio', 'turist'
            return LightPlane.new
        when 'helicopter', 'copter', 'chopper'
            return Helicopter.new
        else
            puts 'Unrecognized vehicle type. Here is your light plane :)'
            return LightPlane.new
        end
    end
end


landFactory = LandVehicleFactory.instance()
waterFactory = WaterVehicleFactory.instance()
airFactory = AirborneVehicleFactory.instance()


jacht = waterFactory.getVehicle 'yacht'
puts jacht.info

awionetka = airFactory.getVehicle 'light'
puts awionetka.info

motor = landFactory.getVehicle 'motorcycle'
puts motor.info

