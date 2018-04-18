# This migration comes from spree_delivery_slots (originally 20160317195010)
class AddDeliverySlotReferenceToSpreeShipment < ActiveRecord::Migration
  def change
    add_reference :spree_shipments, :delivery_slot, index: true
  end
end
