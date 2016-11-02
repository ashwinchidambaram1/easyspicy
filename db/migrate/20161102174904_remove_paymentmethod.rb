class RemovePaymentmethod < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :paymentmethod
  end
end
