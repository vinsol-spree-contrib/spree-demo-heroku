# This migration comes from spree_social_media_marketing (originally 20160524120136)
class ChangePostMessageInSpreeSocialMediaPosts < ActiveRecord::Migration
  def up
    change_column :spree_social_media_posts, :post_message, :text
  end

  def down
    change_column :spree_social_media_posts, :post_message, :string
  end
end
