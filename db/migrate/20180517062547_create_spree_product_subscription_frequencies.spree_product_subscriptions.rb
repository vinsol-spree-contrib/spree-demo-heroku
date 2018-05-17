# This migration comes from spree_product_subscriptions (originally 20160229122857)
class CreateSpreeProductSubscriptionFrequencies < ActiveRecord::Migration[4.2]
  def change
    create_table :spree_product_subscription_frequencies do |t|
      t.references :product, index: true
      t.references :subscription_frequency
    end
  end
end
