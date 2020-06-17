# This migration comes from spree_product_subscriptions (originally 20180508100649)
class AddOccurencePossibleColumnToSpreeSubscriptions < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_subscriptions, :next_occurrence_possible, :boolean, default: true
  end
end
