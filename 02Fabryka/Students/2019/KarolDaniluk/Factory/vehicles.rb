class Vehicle
    attr_accessor :manufacturer, :model, :engine

    def info()
        @manufacturer + ' ' + @model + ' | ' + @engine
        #raise NotImplementedError
    end

end


class Land < Vehicle
    attr_accessor :seats

    def info()
        super + " | #{seats} seats"
    end

end


class Airborne < Vehicle
    attr_accessor :ceiling

    def info()
        super + " | ceiling: #{ceiling} m"
    end

end


class Water < Vehicle
    attr_accessor :crew, :passengers

    def info()
        super + " | #{crew} crew and #{passengers} passengers"
    end

end
