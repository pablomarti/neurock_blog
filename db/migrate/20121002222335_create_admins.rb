class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
