# This migration comes from spree_intercom (originally 20180523080727)
class AddIntercomUserIdToSpreeUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_users, :intercom_user_id, :string
    add_index :spree_users, :intercom_user_id, unique: true
  end
end
