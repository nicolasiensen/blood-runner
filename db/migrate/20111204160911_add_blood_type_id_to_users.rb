class AddBloodTypeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :blood_type_id, :integer
  end
end
