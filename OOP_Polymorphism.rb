# Create objects that implements Polymorphism by Inheritance and Duck-typing
#
#INHERITANCE

class Animal
    def characteristic
      "I have 4 leg and 2 eye."
    end
end
class Cat < Animal
    def characteristic
      "#{super} and I am a cat. meow.."
    end
end
class Dog < Animal
    def characteristic
      "#{super} I am a dog. woof..grr.."
    end
end

animal = Animal.new
cat = Cat.new
dog = Dog.new

p animal.characteristic
p cat.characteristic
p dog.characteristic


#DUCK_TYPING

def make_quack(sound_maker)
  sound_maker.quack
end


class Duck
  def quack
    puts "Quack!"
  end
end

class Robot
  def quack
    puts "Beep beep!"
  end
end


duck = Duck.new
robot = Robot.new

make_quack(duck)
make_quack(robot)
