class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.integer :o_negative
      t.integer :o_positive
      t.integer :a_negative
      t.integer :b_negative
      t.integer :a_positive
      t.integer :b_positive
      t.integer :ab_negative
      t.integer :ab_positive

      t.timestamps
    end
  end
end
