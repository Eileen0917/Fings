class AddPlaceIdToThings < ActiveRecord::Migration[5.0]
  def change
    add_column :things, :place_id, :integer
  end
end
