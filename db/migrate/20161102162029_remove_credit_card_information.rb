class RemoveCreditCardInformation < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :cardtype
  	remove_column :users, :expmonth
  	remove_column :users, :expyear
  	add_column :users, :paymentmethod, :string
  end
end
