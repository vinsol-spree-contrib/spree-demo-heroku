# This migration comes from spree_social_media_marketing (originally 20160524052715)
class AddErrorMessageToSocialMediaPost < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_social_media_posts, :error_message, :text
  end
end
