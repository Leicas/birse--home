class Droitadmin < ActiveRecord::Migration
  def self.up
  change_table :pgs do |t|
  t.boolean :admin
  end
  end

  def self.down
  end
end
