class Rectangle
    def initialize(w,h)
        @w,@h = w,h
    end
    def getArea
        puts "Area of retangle with width: #{@w} and height: #{@h} is #{@w*@h}"
    end
end
class Box < Rectangle
    def getPerimeter
        puts "Perimeter of retangle is #{(@w + @h) * 2}"
    end
    def +(other)
        Box.new(@w + other.w, @h + other.h)
    end
    def -@
        Box.new(-@w, -@h)
    end
    def *(scalar)
        Box.new(@w * scalar, @h * scalar)
    end
end
 box = Box.new(4,5)
 box.getPerimeter()
 box.getArea()

