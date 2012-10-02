class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.text :comment
      t.integer :parent_id, :default => 0
      t.string :parent_type, :default => ""

      t.timestamps
    end
    add_index :comments, :user_id
  end
end
