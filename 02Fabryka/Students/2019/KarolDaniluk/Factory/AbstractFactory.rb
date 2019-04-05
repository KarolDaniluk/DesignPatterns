require 'singleton'

require_relative 'vehicles_land'
require_relative 'vehicles_air'
require_relative 'vehicles_water'

module IAbstractFactory
    def getLandVehicle()
        raise NotImplementedError
    end

    def getAirVehicle()
        raise NotImplementedError
    end

    def getWaterVehicle()
        raise NotImplementedError
    end
end


class MilitaryFactory
    include Singleton
    include IAbstractFactory

    def getLandVehicle(type)
        type.downcase!
        puts 'We have only a tank :(' unless ( ['tank', 'challenger', 'challenger 2'].include? type )
        return Tank.new
    end

    def getAirVehicle(type)
        type.downcase!
        case (type)
        when 'fighter', 'fighterjet', 'fighter jet'
            return FighterJet.new
        when 'bomber'
            return Bomber.new
        else
            puts 'Unrecognized vehicle type. Here is your fighter jet :)'
            return FighterJet.new
        end
    end

    def getWaterVehicle(type)
        puts 'We have only an aircraft carrier :(' unless ( ['carrier', 'aircraft carrier', 'stennis'].include? type )
        return Carrier.new
    end

end


class TransportFactory
    include Singleton
    include IAbstractFactory

    def getLandVehicle(type)
        type.downcase!
        case type
        when 'van', 'volkswagen'
            return Van.new
        when 'truck', 'lorry', 'man'
            return Truck.new
        else
            puts 'Unrecognized vehicle type. Here is your van :)'
            return Van.new
        end
    end

    def getAirVehicle(type)
        type.downcase!
        case type
        when 'cargoplane', 'cargo', 'transportation'
            return CargoPlane.new
        when 'helicopter', 'copter', 'chopper'
            return Helicopter.new
        else
            puts 'Unrecognized vehicle type. Here is your cargo plane :)'
            return CargoPlane.new
        end
    end

    def getWaterVehicle(type)
        type.downcase!
        case type
        when 'container', 'cargo'
            return ContainerShip.new
        when 'ferry', 'stena spirit', 'stena', 'spirit'
            return Ferry.new
        else
            puts 'Unrecognized vehicle type. Here is your ferry :)'
            return Ferry.new
        end
    end

end


class CivilFactory
    include Singleton
    include IAbstractFactory

    def getLandVehicle(type)
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
        else
            puts 'Unrecognized vehicle type. Here is your sedan car :)'
            return Sedan.new
        end
    end

    def getAirVehicle(type)
        type.downcase!
        case type
        when 'airliner', 'travel', 'boeing'
            return Airliner.new
        when 'light', 'avio', 'turist'
            return LightPlane.new
        else
            puts 'Unrecognized vehicle type. Here is your light plane :)'
            return LightPlane.new
        end
    end

    def getWaterVehicle(type)
        type.downcase!
        case type
        when 'cruise', 'travel'
            return CruiseShip.new
        when 'yacht'
            return Yacht.new
        when 'speedboat', 'speed'
            return Speedboat.new
        else
            puts 'Unrecognized vehicle type. Here is your yacht :)'
            return Yacht.new
        end
    end

end


# instancje fabryk
fabryka_cywilna = CivilFactory.instance()
fabryka_transportowa = TransportFactory.instance()
fabryka_wojskowa = MilitaryFactory.instance()

# pojazdy cywilne
puts "\nPOJAZDY CYWILNE"
veh1 = fabryka_cywilna.getAirVehicle 'airliner'
puts veh1.info()

veh2 = fabryka_cywilna.getLandVehicle 'suv'
puts veh2.info()

veh3 = fabryka_cywilna.getWaterVehicle 'motorówka'
puts veh3.info()

# pojazdy transportowe
puts "\nPOJAZDY TRANSPORTOWE"
veh4 = fabryka_transportowa.getAirVehicle 'copter'
puts veh4.info()

veh5 = fabryka_transportowa.getLandVehicle 'lorry'
puts veh5.info()

veh6 = fabryka_transportowa.getWaterVehicle 'submarine'
puts veh6.info()

# pojazdy wojskowe
puts "\nPOJAZDY WOJSKOWE"
veh7 = fabryka_wojskowa.getAirVehicle 'bomber'
puts veh7.info()

veh8 = fabryka_wojskowa.getLandVehicle 'humvee'
puts veh8.info()

veh9 = fabryka_wojskowa.getWaterVehicle 'warship'
puts veh9.info()
