# This migration comes from spree_product_subscriptions (originally 20160311061107)
class RemoveEndDateFromSubscriptions < ActiveRecord::Migration[4.2]
  def change
    remove_column :spree_subscriptions, :end_date, :datetime
  end
end
