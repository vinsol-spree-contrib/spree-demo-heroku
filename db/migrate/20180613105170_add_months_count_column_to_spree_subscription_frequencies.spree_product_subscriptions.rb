# This migration comes from spree_product_subscriptions (originally 20160303145717)
class AddMonthsCountColumnToSpreeSubscriptionFrequencies < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_subscription_frequencies, :months_count, :integer
  end
end
