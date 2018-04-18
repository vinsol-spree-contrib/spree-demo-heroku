# This migration comes from spree_reffiliate (originally 20140907041850)
class CreateSpreeReferrals < ActiveRecord::Migration
  def change
    create_table :spree_referrals do |t|
      t.string :code
      t.integer :user_id
    end
  end
end
