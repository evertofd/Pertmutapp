class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.boolean :enabled
      t.string :picture

      t.timestamps
    end
  end
end
