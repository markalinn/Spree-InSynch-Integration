class CreateIm3ItemExtDesc < ActiveRecord::Migration
  def self.up
    create_table :IM3_ItemExtDesc, :id => false do |t|
      t.string :ItemNumber, :limit => 15
      t.string :SEQNumber, :limit => 3
      t.string :CommentSize, :limit => 4
      t.string :CommentText, :limit => 50
    end
  end

  def self.down
    drop_table :IM3_ItemExtDesc
  end
end
