# This migration comes from spree_product_subscriptions (originally 20160229122244)
class CreateSpreeSubscriptionFrequencies < ActiveRecord::Migration[4.2]
  def change
    create_table :spree_subscription_frequencies do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
