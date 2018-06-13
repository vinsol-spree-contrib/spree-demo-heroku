# This migration comes from spree_product_subscriptions (originally 20160301124600)
class AddPaymentReferenceToSpreeSubscriptions < ActiveRecord::Migration[4.2]
  def change
    add_reference :spree_subscriptions, :source, index: true
  end
end
