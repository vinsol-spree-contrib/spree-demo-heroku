# This migration comes from spree_account_recurring (originally 20180411061139)
class AddStripeSubscriptionIdToSpreeSubscriptionPlan < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_subscription_plans, :stripe_subscription_id, :string
  end
end
