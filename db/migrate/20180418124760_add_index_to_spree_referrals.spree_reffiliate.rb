# This migration comes from spree_reffiliate (originally 20140907062121)
class AddIndexToSpreeReferrals < ActiveRecord::Migration
  def change
    add_index :spree_referrals, :user_id
  end
end
