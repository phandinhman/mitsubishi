class AddSpecialCostToCar < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :special_cost, :integer
  end
end
