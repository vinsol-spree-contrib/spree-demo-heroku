# This migration comes from spree (originally 20200607161222)
class AddNewOrderNotificationsEmailToSpreeStores < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_stores, :new_order_notifications_email, :string
  end
end
