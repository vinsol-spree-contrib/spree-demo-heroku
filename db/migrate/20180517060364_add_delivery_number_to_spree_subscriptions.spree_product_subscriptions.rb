# This migration comes from spree_product_subscriptions (originally 20160311061332)
class AddDeliveryNumberToSpreeSubscriptions < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_subscriptions, :delivery_number, :integer
  end
end
