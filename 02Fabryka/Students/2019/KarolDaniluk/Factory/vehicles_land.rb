require_relative 'vehicles'


class Sedan < Land
    def initialize
        @manufacturer = 'Audi'
        @model = 'A6'
        @engine = '2.0 TDI 190 KM'
        @seats = 5
    end
end


class Sport < Land
    def initialize
        @manufacturer = 'BMW'
        @model = 'M4'
        @engine = '2.9 TwinPower Turbo 431 KM'
        @seats = 4
    end
end


class SUV < Land
    def initialize
        @manufacturer = 'Volvo'
        @model = 'XC 90'
        @engine = '1.97 T8 Twin Hybrid 320 KM'
        @seats = 7
    end
end


class Motorcycle < Land
    def initialize
        @manufacturer = 'Kawasaki'
        @model = 'Ninja ZX'
        @engine = '.998 210 KM'
        @seats = 2
    end
end


class Van < Land
    def initialize
        @manufacturer = 'Volkswagen'
        @model = 'Crafter'
        @engine = '2.0 TDI 177 KM'
        @seats = 3
    end
end


class Truck < Land
    def initialize
        @manufacturer = 'MAN'
        @model = 'TG-range'
        @engine = '12.4 D0836 520 KM'
        @seats = 2
    end
end


class Tank < Land
    def initialize
        @manufacturer = 'Alvis Vickers'
        @model = 'Challenger 2'
        @engine = 'Diesel Perkins-Condor CV12 1200 KM'
        @seats = 4
    end
end