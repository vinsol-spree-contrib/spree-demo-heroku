# This migration comes from spree (originally 20200607161221)
class AddStoreOwnerOrderNotificationDeliveredToSpreeOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_orders, :store_owner_notification_delivered, :boolean
  end
end
