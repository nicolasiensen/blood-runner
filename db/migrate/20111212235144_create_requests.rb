class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :receptor
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
