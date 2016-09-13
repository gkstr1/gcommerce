class CreateSneakers < ActiveRecord::Migration[5.0]
  def change
    create_table :sneakers do |t|
      t.string :title
      t.integer :release_year
      t.float :price
      t.text :description
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end
