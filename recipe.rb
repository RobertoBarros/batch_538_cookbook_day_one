class Recipe
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end

  # Substituido pelo attr_reader:
  # def name
  #   return @name
  # end

  # def description
  #   return @description
  # end
end

# Instancia o recipe
# recipe = Recipe.new("feijoada", "arroz e carne de porco")
# recipe.name => "feijoada"
# recipe.description => "arroz e carne de porco"