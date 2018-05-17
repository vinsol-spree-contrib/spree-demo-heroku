# This migration comes from spree_product_subscriptions (originally 20160406115147)
class RenamePauseInSpreeSubscriptions < ActiveRecord::Migration[4.2]
  def up
    rename_column :spree_subscriptions, :pause, :paused
  end

  def down
    rename_column :spree_subscriptions, :paused, :pause
  end
end
