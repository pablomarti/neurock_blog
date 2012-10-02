class CreateBlockKinds < ActiveRecord::Migration
  def change
    create_table :block_kinds do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
