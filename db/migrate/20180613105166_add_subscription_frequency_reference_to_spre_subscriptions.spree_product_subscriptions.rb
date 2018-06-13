# This migration comes from spree_product_subscriptions (originally 20160301080555)
class AddSubscriptionFrequencyReferenceToSpreSubscriptions < ActiveRecord::Migration[4.2]
  def change
    add_reference :spree_subscriptions, :subscription_frequency, index: true
  end
end
