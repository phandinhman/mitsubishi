class CreateCarDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :car_details do |t|
      t.string :title
      t.text :boty

      t.timestamps
    end
  end
end
