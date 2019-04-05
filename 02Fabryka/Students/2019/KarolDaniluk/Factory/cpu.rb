module Processor
    def process()
    end
end

class AMDProcessor #< Processor
    include Processor
    def process()
        puts 'Przygotowuję procesor AMD...'
    end
end

class IntelProcessor #< Processor
    include Processor
    def process()
        puts 'Przygotowuję procesor Intel...'
    end
end

module Cooler
    def process()
    end
end

class AMDCooler #< Cooler
    include Cooler
    def process()
        puts 'Przygotowuję wentylator AMD...'
    end
end

class IntelCooler #< Cooler
    include Cooler
    def process()
        puts 'Przygotowuję wentylator Intel...'
    end
end

# Rodzina fabyrk: producenci
module ProcessorFactory
    def createProcessor()
    end
    
    def createCooler()
    end
end

class AMDFactory #< ProcessorFacotry
    include ProcessorFactory
    def createProcessor()
        AMDProcessor.new
    end
    
    def createCooler()
        AMDCooler.new
    end
end

class IntelFactory # < ProcessorFacotry
    include ProcessorFactory
    def createProcessor()
        IntelProcessor.new
    end

    def createCooler()
        IntelCooler.new
    end
end


class Computer
    def initialize(serialNumber, factory)
        @serialNumber = serialNumber
        @processor = factory.createProcessor
        @cooler = factory.createCooler
        process()
    end

    def process()
        puts 'Rozpoczynam składanie komputera o numerze seryjnym ' + @serialNumber
        @processor.process()
        @cooler.process()
        puts 'Zakończyłem składanie komputera o numerze seryjnym ' + @serialNumber
    end

end

computer1 = Computer.new('PC1', AMDFactory.new)
computer2 = Computer.new('PC2', IntelFactory.new)
