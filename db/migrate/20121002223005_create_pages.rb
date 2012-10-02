class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.references :admin
      t.string :title

      t.timestamps
    end
    add_index :pages, :admin_id
  end
end
