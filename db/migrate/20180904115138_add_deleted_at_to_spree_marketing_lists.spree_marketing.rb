# This migration comes from spree_marketing (originally 20160504070817)
class AddDeletedAtToSpreeMarketingLists < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_marketing_lists, :deleted_at, :datetime
  end
end
