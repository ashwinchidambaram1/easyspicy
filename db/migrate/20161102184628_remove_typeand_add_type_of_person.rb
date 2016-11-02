class RemoveTypeandAddTypeOfPerson < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :member, :string
  	add_column :users, :payType, :string

  end
end
