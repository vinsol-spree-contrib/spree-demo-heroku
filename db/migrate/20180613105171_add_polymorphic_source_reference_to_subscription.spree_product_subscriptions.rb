# This migration comes from spree_product_subscriptions (originally 20160303190542)
class AddPolymorphicSourceReferenceToSubscription < ActiveRecord::Migration[4.2]
  def change
    remove_reference :spree_subscriptions, :source
    add_reference :spree_subscriptions, :source, polymorphic: true
  end
end
