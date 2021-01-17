class AddReservedToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :reserved, :integer
  end
end
