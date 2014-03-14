##
# This class suggests a random pizza to adventurous impatient hungry people
#

require 'yaml'

class RandomPizza

  def initialize
    @toppings = YAML::load_file File.join(__dir__, 'data/toppings.yml')
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
    toppings = @toppings.values.flatten
    return join_with_comma toppings.sample(n)
  end

  def join_with_comma(items)
    items[-1] = "and #{items[-1]}"
    return items.join(", ") if items.count > 2
    return items.join(" ") if items.count <= 2
  end

  def valid_topping? topping
    toppings = @toppings.values.flatten
    toppings.include? topping
  end

end
