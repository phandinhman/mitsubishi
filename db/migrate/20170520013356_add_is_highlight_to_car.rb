class AddIsHighlightToCar < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :is_highlight, :boolean, default: false
  end
end
