# This migration comes from spree_delivery_slots (originally 20160311073947)
class AddIsDeliverySlotsEnabledToSpreeShippingMethod < ActiveRecord::Migration
  def change
    add_column :spree_shipping_methods, :is_delivery_slots_enabled, :boolean, default: false, null: false
  end
end
