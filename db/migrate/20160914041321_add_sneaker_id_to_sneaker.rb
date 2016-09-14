class AddSneakerIdToSneaker < ActiveRecord::Migration[5.0]
  def change
    add_column :sneakers, :sneaker_id, :integer
  end
end
