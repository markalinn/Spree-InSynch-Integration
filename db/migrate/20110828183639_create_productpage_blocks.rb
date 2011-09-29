class CreateProductpageBlocks < ActiveRecord::Migration
  def self.up
    create_table :productpage_blocks do |t|
      t.string :title
      t.text :html
      t.integer :width
      t.integer :height
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :productpage_blocks
  end
end
