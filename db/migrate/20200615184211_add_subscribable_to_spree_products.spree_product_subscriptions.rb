# This migration comes from spree_product_subscriptions (originally 20160229082140)
class AddSubscribableToSpreeProducts < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_products, :subscribable, :boolean
    add_index :spree_products, :subscribable
  end
end
