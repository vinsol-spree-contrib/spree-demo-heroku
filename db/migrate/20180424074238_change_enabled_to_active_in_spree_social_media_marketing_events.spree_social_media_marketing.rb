# This migration comes from spree_social_media_marketing (originally 20160524160404)
class ChangeEnabledToActiveInSpreeSocialMediaMarketingEvents < ActiveRecord::Migration[4.2]
  def change
    rename_column :spree_social_media_marketing_events, :enabled, :active
  end
end
