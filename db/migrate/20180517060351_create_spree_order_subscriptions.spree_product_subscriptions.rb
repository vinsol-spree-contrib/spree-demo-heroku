# This migration comes from spree_product_subscriptions (originally 20160229110330)
class CreateSpreeOrderSubscriptions < ActiveRecord::Migration[4.2]
  def change
    create_table :spree_order_subscriptions do |t|
      t.references :subscription, index: true
      t.references :order, index: true
      t.date :failed_at
      t.text :failure_reasons
    end
  end
end
