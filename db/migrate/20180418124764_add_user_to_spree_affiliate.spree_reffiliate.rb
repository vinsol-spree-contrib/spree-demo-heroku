# This migration comes from spree_reffiliate (originally 20170208141125)
class AddUserToSpreeAffiliate < ActiveRecord::Migration
  def change
    add_column :spree_affiliates, :email, :string
    add_column :spree_affiliates, :active, :boolean, default: false
    add_column :spree_affiliates, :activation_token, :string
    add_column :spree_affiliates, :activated_at, :datetime

    add_index :spree_affiliates, :email
    add_index :spree_affiliates, :active
  end
end
