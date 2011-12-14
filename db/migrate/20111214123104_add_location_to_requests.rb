class AddLocationToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :location, :string
  end
end
