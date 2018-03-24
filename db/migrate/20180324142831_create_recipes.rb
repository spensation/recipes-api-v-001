class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :category
      t.string :serves
      t.text :ingredients
      t.text :directions
      t.string :prep_time
      t.string :cook_time
      t.string :total_time
      
      t.timestamps
    end
  end
end
