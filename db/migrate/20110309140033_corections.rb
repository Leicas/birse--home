class Corections < ActiveRecord::Migration
  def self.up
  change_table :pgs do |t|
  t.remove :cfoys, :ccvis
  end
  end

  def self.down
  end
end
