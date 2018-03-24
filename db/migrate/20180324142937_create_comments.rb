class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
    	t.string :content
    	t.belongs_to :recipe, index: true
      t.timestamps
    end
  end
end
