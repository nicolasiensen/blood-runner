class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.integer :o_negative , :default => 0 
      t.integer :o_positive , :default => 0 
      t.integer :a_negative , :default => 0 
      t.integer :b_negative , :default => 0 
      t.integer :a_positive , :default => 0 
      t.integer :b_positive , :default => 0 
      t.integer :ab_negative, :default => 0 
      t.integer :ab_positive, :default => 0 

      t.timestamps
    end
  end
end
