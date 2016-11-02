class RemoveTypeandAddTypeOfPerson < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :type
  	add_column :users, :member, :string
  	add_column :users, :payType, :string

  end
end
