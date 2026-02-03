# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

# String Class
ben_fav_food = "tacos" #defining the object
puts ben_fav_food #will show the object
puts ben_fav_food.class # will show what type of object
puts ben_fav_food.upcase #will share it upcase

# String Methods
# Making that dogs (wich will be a class) return latido
class Dog 
  
def speak
    puts "Auau!"
end

end

rugs = Dog.new
puts rugs.speak