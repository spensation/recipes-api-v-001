class RecipeSerializer < ActiveModel::Serializer
attributes :id, :title, :category, :serves, :directions, :prep_time, :cook_time, :total_time, :food_image, :likes, :comments
has_many :ingredients, serializer: IngredientSerializer

end