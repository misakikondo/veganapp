class AddNumcountToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :likes_count, :integer
  end
end
