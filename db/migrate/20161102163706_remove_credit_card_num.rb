class RemoveCreditCardNum < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :cardnum
  end
end
