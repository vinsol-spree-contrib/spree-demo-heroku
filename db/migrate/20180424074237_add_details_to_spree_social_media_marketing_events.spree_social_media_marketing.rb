# This migration comes from spree_social_media_marketing (originally 20160524140250)
class AddDetailsToSpreeSocialMediaMarketingEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_social_media_marketing_events, :class_to_run, :string
    add_column :spree_social_media_marketing_events, :run_time, :string
  end
end
