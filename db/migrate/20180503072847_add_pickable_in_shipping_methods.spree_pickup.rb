# This migration comes from spree_pickup (originally 20160606065945)
class AddPickableInShippingMethods < ActiveRecord::Migration
  def change
    add_column :spree_shipping_methods, :pickupable, :boolean, default: false
  end
end
