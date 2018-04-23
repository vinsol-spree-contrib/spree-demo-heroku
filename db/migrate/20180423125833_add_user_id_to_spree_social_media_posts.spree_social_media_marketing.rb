# This migration comes from spree_social_media_marketing (originally 20180307101843)
class AddUserIdToSpreeSocialMediaPosts < ActiveRecord::Migration
  def change
    add_reference :spree_social_media_posts, :user, index: true
  end
end
