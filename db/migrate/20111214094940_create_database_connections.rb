class CreateConnections < ActiveRecord::Migration
  def self.up
    create_table :database_connections do |t|
      t.string :adapter, :null => false
      t.string :host, :null => false
      t.string :username, :null => false
      t.string :password
      t.string :database, :null => false
      t.integer :user_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :connections
  end
end
