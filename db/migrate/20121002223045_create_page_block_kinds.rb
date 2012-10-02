class CreatePageBlockKinds < ActiveRecord::Migration
  def change
    create_table :page_block_kinds do |t|
      t.references :page
      t.references :block_kind

      t.timestamps
    end
    add_index :page_block_kinds, :page_id
    add_index :page_block_kinds, :block_kind_id
  end
end
