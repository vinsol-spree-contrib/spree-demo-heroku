# This migration comes from spree_social_media_marketing (originally 20160518085600)
class CreateSpreeSocialMediaPosts < ActiveRecord::Migration
  def change
    create_table :spree_social_media_posts do |t|
      t.integer :social_media_postable_id
      t.string :social_media_postable_type
      t.string :post_id
      t.string :post_message

      t.timestamps
    end
  end
end
