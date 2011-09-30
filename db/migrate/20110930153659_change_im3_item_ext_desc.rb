class ChangeIm3ItemExtDesc < ActiveRecord::Migration
  def self.up
    drop_table :IM3_ItemExtDesc
    create_table :IM3_ItemExtDesc, :id => false do |t|
      t.string :ExtendedDescriptionKey, :limit => 10
      t.string :ExtendedDescription, :limit => 500
      t.string :CreationModuleCode, :limit => 3
      t.string :UpdatedModuleCode, :limit => 3
      t.string :DateCreated, :limit => 8
      t.string :TimeCreated, :limit => 8
      t.string :UserCreatedKey, :limit => 10
      t.string :DateUpdated, :limit => 8
      t.string :TimeUpdated, :limit => 8
      t.string :UserUpdatedKey, :limit => 10
    end
    #Using existing xolumn but extending length of field to support the ext description key from new table
    change_column :IM1_InventoryMasterfile, :ExtendedDescription, :string, :limit => 10
  end

  def self.down
    change_column :IM1_InventoryMasterfile, :ExtendedDescription, :string, :limit => 1
  end
end
