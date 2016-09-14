class AddUserIdToSneakers < ActiveRecord::Migration[5.0]
  def change
    add_column :sneakers, :user_id, :integer
    add_index :sneakers, :user_id
  end
end
