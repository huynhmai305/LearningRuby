class Exp
   def initialize
       @name ='Mai'
   end
    def hi_world
      puts "Hi World! I'm #{@name}"
    end
  end
  
  new_class_obj = Exp.new
  new_class_obj.hi_world 