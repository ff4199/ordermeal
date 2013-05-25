class RemoveAttrFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :room
  end

  def down
    add_column :users, :room, :string
  end
end
