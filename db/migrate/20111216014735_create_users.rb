class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :password
      t.string :firstname
      t.string :lastname
      t.string :cpf
      t.string :email
      t.references :role
      t.integer :status
      t.string :address
      t.references :city
      t.string :cel

      t.timestamps
    end
    add_index :users, :role_id
    add_index :users, :city_id
  end
end
