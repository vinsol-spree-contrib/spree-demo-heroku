# This migration comes from spree_account_recurring (originally 20180410131449)
class ChangeSubscriptionIdToSubscriptionPlanId < ActiveRecord::Migration[4.2]
  def change
    rename_column :spree_subscription_events ,:subscription_id, :subscription_plan_id
  end
end
