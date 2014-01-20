class Dessert
attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end 
  
  def healthy?
    if @calories <= 200
      return true
    end

  end
  
  def delicious?
    return true
  end
  
end

class JellyBean < Dessert

  def initialize(name, calories, flavor)
    super(name)
    super(calories)
    @flavor = flavor
  end
  
  def delicious?
    #@flavor == "black licorice" ? false : true
    if @flavor == "black licorice"
      return false
    else 
      return true
    end
  end
  
end

# Testing your code 
jelly = JellyBean.new("jelly bean", 130, "black licorice")
puts jelly.healthy? == true # => true : it inherits healthy? method from the Dessert class
puts jelly.delicious? == false # => true : delicious is over-ridden by the children class implementation !
