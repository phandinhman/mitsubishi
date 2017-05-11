class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :cost
      t.float :version
      t.integer :width
      t.integer :height
      t.integer :length
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
