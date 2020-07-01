# This migration comes from spree_delivery_slots (originally 20160317190225)
class RemoveIsAnyTimeSlotFromSpreeDeliverySlots < SpreeExtension::Migration[4.2]
  def up
    remove_column :spree_delivery_slots, :is_any_time_slot
  end

  def down
    add_column :spree_delivery_slots, :is_any_time_slot, :boolean, default: false, null: false
  end
end
