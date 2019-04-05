require_relative 'vehicles'


class Carrier < Water
    def initialize
        @manufacturer = 'Newport News'
        @model = 'USS John S. Stennis'
        @engine = '2x Westinghouse A4W Nuclear 97 MW: 260 158 KM'
        @crew = 3532
        @passengers = 2968
    end
end


class CruiseShip < Water
    def initialize
        @manufacturer = "Chantiers de l'Atlantique"
        @model = 'Majesty of the Seas'
        @engine = ' 4x Crepel/Pielstick type 9PC20L: 29 293 KM'
        @crew = 833
        @passengers = 2744
    end
end


class Ferry < Water
    attr_accessor :vehicles

    def initialize
        @manufacturer = 'Stocznia Gdańska'
        @model = 'Stena Spirit'
        @engine = '4x Sulzer 16ZV: 39 424 KM'
        @crew = 18
        @passengers = 1700
        @vehicles = 460
    end

    def info()
        super + " | #{vehicles} vehicles"
    end
end


class ContainerShip < Water
    def initialize
        @manufacturer = 'Samsung Heavy Industries'
        @model = 'OOCL Hong Kong'
        @engine = 'MAN B&W 11G95ME-C95: 82 513 KM'
        @crew = 36
        @passengers = 0
    end
end


class Yacht < Water
    def initialize
        @manufacturer = 'Broward'
        @model = 'Destiny'
        @engine = '3x Caterpillar C-30: 4 576 kW'
        @crew = 2
        @passengers = 10
    end
end


class Speedboat < Water
    def initialize
        @manufacturer = 'Yamaha'
        @model = '242S 2019'
        @engine = '2x YAMAHA Super Vortex 1.81: 360 KM'
        @crew = 1
        @passengers = 11
    end
end