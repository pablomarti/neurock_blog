class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :admin
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :posts, :admin_id
  end
end
