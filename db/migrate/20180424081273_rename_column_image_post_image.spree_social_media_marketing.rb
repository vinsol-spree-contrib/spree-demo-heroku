# This migration comes from spree_social_media_marketing (originally 20180316130005)
class RenameColumnImagePostImage < ActiveRecord::Migration[4.2]
  def change
    rename_column :spree_social_media_post_images, :image_id, :post_image_id
  end
end
