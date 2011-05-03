class CreatePgs < ActiveRecord::Migration
  def self.up
    create_table :pgs do |t|
      t.string :buque
      t.string :nums
      t.string :foys
      t.string :cvis
      t.string :ip
      t.timestamps
   end
  end

  def self.down
    drop_table :pgs
  end
end
