# This migration comes from spree_social_media_marketing (originally 20180311180844)
class RenameMessageColumnAndAddNewColumns < ActiveRecord::Migration[4.2]
  def change
    rename_column :spree_social_media_marketing_events, :message, :fb_message
    add_column :spree_social_media_marketing_events, :twitter_message, :text
  end
end
