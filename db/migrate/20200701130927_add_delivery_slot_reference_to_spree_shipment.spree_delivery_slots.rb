# This migration comes from spree_delivery_slots (originally 20160317195010)
class AddDeliverySlotReferenceToSpreeShipment < SpreeExtension::Migration[4.2]
  def change
    add_reference :spree_shipments, :delivery_slot, index: true
  end
end
