class CreateBloodTypesRequestsJoinTable < ActiveRecord::Migration
  def change
    create_table :blood_types_requests, :id => false do |t|
      t.integer :blood_type_id
      t.integer :request_id

      t.timestamps
    end
  end
end
