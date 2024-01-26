# Create an object that implements Encapsulation
class Cat
  attr_accessor :cat_name, :age
 def initialize(cat_name,age)
    @cat_name = cat_name
    @age = age
 end
 def hungry_cat
    puts "My cat name is #{@cat_name} and she's #{@age} year old. Meow..meoww..!"
 end
end

cat = Cat.new("Miemie",1)
p cat.cat_name
p cat.age
cat.hungry_cat
