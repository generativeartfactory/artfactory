class CreateDb < ActiveRecord::Migration

  def self.up
    create_table :links do |t|
       t.string  :title,  :null => false 
       t.string  :url,    :null => false
       t.integer :points, :default => 0
       t.timestamps   # note: macro adds  created_at (datetime), updated_at (datetime)
    end
    
    add_index :links, [:url], :unique => true    
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration 
  end

end
