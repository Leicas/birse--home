class Addsession < ActiveRecord::Migration
  def self.up
  change_table :pgs do |t|
  t.string :password
  t.boolean :autolog
  end
  end

  def self.down
  end
end
