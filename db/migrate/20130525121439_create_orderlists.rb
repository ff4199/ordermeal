class CreateOrderlists < ActiveRecord::Migration
  def change
    create_table :orderlists do |t|
      t.integer :user_id
      t.string :taste
      t.integer :count
      t.decimal :price
      t.string :hotel

      t.timestamps
    end
     add_index :orderlists, [:user_id, :created_at]
  end
end
