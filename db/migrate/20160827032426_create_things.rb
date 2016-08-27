class CreateThings < ActiveRecord::Migration[5.0]
  def change
    create_table :things do |t|
      t.string :name
      t.text :description
      t.integer :quantity
    end
  end
end
