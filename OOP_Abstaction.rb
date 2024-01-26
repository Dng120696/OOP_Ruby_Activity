
# Create an object that implements Abstraction
#
class CalculateBMI
  attr_accessor :weight, :height

  def initialize(weight, height)
    @weight = weight
    @height = height
  end

  def result
    if(bmi >= 30.0)
      puts "Your BMI is #{bmi.round(2)} and your are Obese"
    elsif(bmi < 30.0 && bmi >= 25.0)
      puts "Your BMI is #{bmi.round(2)} and your are Overweight"
    elsif(bmi < 25.0 && bmi >= 18.5)
      puts "Your BMI is #{bmi.round(2)} and your are Normal weight"
    else
      puts "Your BMI is #{bmi.round(2)} and your are Underweight"
    end
  end

  private

  def bmi
    @weight / (@height ** 2)
  end
end

calculate_bmi = CalculateBMI.new(70, 1.86)
calculate_bmi.result

# #Underweight: BMI less than 18.5
# Normal weight: BMI 18.5 to 24.9
# Overweight: BMI 25 to 29.9
# Obese: BMI 30 or
