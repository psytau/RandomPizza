##
# This class suggests a random pizza to adventurous impatient hungry people

class RandomPizza
  attr_reader :suggestion

  def initialize
    puts "Hello adventurous person!"
    puts suggestion
  end

  def suggestion
    "You should try #{crust} crust with #{sauce} sauce and #{toppings}."
  end

  private

  def crust
    ["whole wheat", "thin", "gluten-free", "classic"].sample
  end

  def sauce
    ["tomato", "garlic and olive oil", "pesto", "vegan bechamel"].sample
  end

  def toppings n=3
    toppings = ["garlic", "onions", "tomatoes", "olives", "green peppers", "potatoes", "spinach",
                "artichoke hearts", "roasted red peppers", "jalapenos", "pineapple", "roasted garlic",
                "sun-dried tomatoes", "tempeh bacon", "roasted beets"]
    return join_with_comma toppings.sample(n)
  end

  def join_with_comma(items)
    items[-1] = "and #{items[-1]}"
    return items.join(", ") if items.count > 2
    return items.join(" ") if items.count <= 2
  end

end
