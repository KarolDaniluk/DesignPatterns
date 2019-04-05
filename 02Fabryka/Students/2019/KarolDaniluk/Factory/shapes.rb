module Shape
    def draw()
        puts 'Undefinded shape'
    end
end

class Rectangle
    include Shape
    def draw()
        puts 'inside Rectangle::draw() method.'
    end
end

class Square
    include Shape
    def draw()
        puts 'inside Square::draw() method'
    end
end

class Circle
    include Shape
    def draw()
        puts 'inside Circle::draw() method'
    end
end

class EmptyShape
    include Shape
end

class ShapeFactory

    def self.getShape(shapeType)
        shapeType.downcase!
        case (shapeType)
        when 'circle'
            return Circle.new()
        when 'rectangle'
            return Rectangle.new()
        when 'square'
            return Square.new()            
        else
            return EmptyShape.new()
        end
    end
end

shape1 = ShapeFactory.getShape('circle')
shape2 = ShapeFactory.getShape('rectangle')
shape3 = ShapeFactory.getShape('square')
shape4 = ShapeFactory.getShape('niewiadomoco')

shape1.draw
shape2.draw
shape3.draw
shape4.draw

        