class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :password
      t.string :full_name
      t.string :street
      t.string :email_address
      t.string :city
      t.integer :postal_code
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
