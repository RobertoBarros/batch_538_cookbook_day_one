

class Controller
  def initialize(cookbook)
    @view = View.new
    @cookbook = cookbook
  end

  def list
    # 1. Recuperar todas as receitas do cookbook
    recipes = @cookbook.all
    # 2. Mandar as receitas para a view exibir
    @view.display(recipes)
  end

  def create
    # 1. Perguntar para o usuário o nome da receita
    name = @view.ask_recipe_name

    # 2. Perguntar a descrição da receita
    description = @view.ask_recipe_description

    # 3. Instanciar uma nova receita
    new_recipe = Recipe.new(name, description)

    # 4. Adicionar ao repositório (cookbook)
    @cookbook.add_recipe(new_recipe)
  end

  def destroy
    # 1. Listar todas as receitas
    list

    # 2. Perguntar o index da receita a ser excluída
    index = @view.ask_recipe_index

    # 3. Cookbook exclui a receita pelo index
    @cookbook.remove_recipe(index)
  end
end
