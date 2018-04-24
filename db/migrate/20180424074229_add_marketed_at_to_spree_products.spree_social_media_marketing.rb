# This migration comes from spree_social_media_marketing (originally 20160513082053)
class AddMarketedAtToSpreeProducts < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_products, :marketed_at, :datetime
  end
end
