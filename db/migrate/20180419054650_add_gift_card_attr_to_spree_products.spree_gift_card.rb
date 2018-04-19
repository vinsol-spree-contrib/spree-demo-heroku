# This migration comes from spree_gift_card (originally 20101008115306)
class AddGiftCardAttrToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :is_gift_card, :boolean, :default => false, :null => false
  end
end
