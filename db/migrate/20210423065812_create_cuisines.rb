class CreateCuisines < ActiveRecord::Migration[5.0]
  def change
    create_table :cuisines do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
