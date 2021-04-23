class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :ingredients
      t.text :method
      t.string :cuisine
      t.references :user, foreign_key: true
      t.string :dietary

      t.timestamps
    end
  end
end
