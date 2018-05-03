# This migration comes from spree_pickup (originally 20160606123414)
class AddPickupLocationIdInOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :pickup_location_id, :integer
    add_index :spree_orders, :pickup_location_id
  end
end
