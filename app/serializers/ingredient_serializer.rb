class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipe_id
  belongs_to :recipe
end
