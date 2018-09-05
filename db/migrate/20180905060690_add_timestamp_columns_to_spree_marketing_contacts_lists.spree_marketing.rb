# This migration comes from spree_marketing (originally 20160422110751)
class AddTimestampColumnsToSpreeMarketingContactsLists < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_marketing_contacts_lists, :created_at, :datetime, null: false, default: Time.current
    add_column :spree_marketing_contacts_lists, :updated_at, :datetime, null: false, default: Time.current
  end
end
