class Person

  def initialize (name)
    @name = name
  end

  def greeting
    puts "Hi my name is #{@name}."
  end

end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object."
  end

end

class Student < Person

  def learn
    puts "I get it!"
  end

end

#Calling the teach method on a student or the learn method on an insturctor leads to undefined method error.
#The methods are specific to their respective classes.
