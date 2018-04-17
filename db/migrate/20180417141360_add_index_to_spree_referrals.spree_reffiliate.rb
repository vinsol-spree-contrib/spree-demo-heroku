# This migration comes from spree_reffiliate (originally 20140907062121)
class AddIndexToSpreeReferrals < ActiveRecord::Migration[4.2]
  def change
    add_index :spree_referrals, :user_id
  end
end
