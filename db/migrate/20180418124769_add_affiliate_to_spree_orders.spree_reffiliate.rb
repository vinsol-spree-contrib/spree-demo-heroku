# This migration comes from spree_reffiliate (originally 20170220060850)
class AddAffiliateToSpreeOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :affiliate_id ,:integer

    add_index :spree_orders, :affiliate_id
  end
end
