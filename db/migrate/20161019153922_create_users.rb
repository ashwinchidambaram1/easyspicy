class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :typeofperson
      t.integer :phone
      t.integer :housenum
      t.string :street
      t.string :town
      t.string :state
      t.string :cardtype
      t.string :expmonth
      t.integer :expyear
      t.integer :cardnum

      t.timestamps
    end
  end
end
