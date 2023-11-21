class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :postal_code
      t.string :adress
      t.string :city
      t.string :email

      t.timestamps
    end
  end
end
