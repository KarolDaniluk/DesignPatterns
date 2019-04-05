require_relative 'vehicles'


class FighterJet < Airborne
    def initialize
        @manufacturer = 'Lockheed Martin'
        @model = 'F35 Lightning II'
        @engine = 'Pratt & Whitney F135 220 kN'
        @ceiling = 15000
    end
end


class Bomber < Airborne
    def initialize
        @manufacturer = 'Northrop'
        @model = 'B-2 Spirit'
        @engine = '4x General Electric F118: 308 kN'
        @ceiling = 15200
    end
end


class Airliner < Airborne
    def initialize
        @manufacturer = 'Boeing'
        @model = '737'
        @engine = '2x CFM International F108 CFM56: 178 kN'
        @ceiling = 12500
    end
end


class LightPlane < Airborne
    def initialize
        @manufacturer = 'Cessana'
        @model = '152'
        @engine = 'Lycoming O-235 110 KM'
        @ceiling = 4480
    end
end


class Helicopter < Airborne
    def initialize
        @manufacturer = 'Rostvertol'
        @model = 'Mi-26'
        @engine = '2x Łotariew D-136: 22 800 KM'
        @ceiling = 4500
    end
end


class CargoPlane < Airborne
    def initialize
        @manufacturer = 'Airbus'
        @model = 'A330-743L Beluga XL'
        @engine = '2x Rolls-Royce Trent 700: 632 kN'
        @ceiling = 11000
    end
end
