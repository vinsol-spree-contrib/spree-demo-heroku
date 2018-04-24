# This migration comes from spree_social_media_marketing (originally 20160516132004)
class AddMarketedAtInSpreePromotions < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_promotions, :marketed_at, :datetime
  end
end
