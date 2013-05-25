class AddAttrToUsers < ActiveRecord::Migration
  def change
    add_column :users, :louhao, :string
    add_column :users, :jiqu, :string
    add_column :users, :fangjian, :string
    add_column :users, :zuoyou, :string
  end
end
