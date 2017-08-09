class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|

      t.integer :user_id, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone_number
      t.string :email

      t.timestamps null: false
    end
  end
end
