class CreateListRecords < ActiveRecord::Migration
  def self.up
    create_table :list_records do |t|
      t.string :table_name
      t.string :fields
      t.integer :connection_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :list_records
  end
end
