class RecipeSerializer < ActiveModel::Serializer
attributes :id, :title, :category, :serves, :directions, :prep_time, :cook_time, :total_time, :likes, :comments
has_many :ingredients, serializer: IngredientSerializer

end