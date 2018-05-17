# This migration comes from spree_product_subscriptions (originally 20160229121236)
class RemoveFrequencyFromSpreeSubscriptions < ActiveRecord::Migration[4.2]
  def change
    remove_column :spree_subscriptions, :frequency, :string
  end
end
