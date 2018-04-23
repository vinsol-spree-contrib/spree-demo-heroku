# This migration comes from spree_social_media_marketing (originally 20160518110147)
class CreateSpreeSocialMediaPostImages < ActiveRecord::Migration
  def change
    create_table :spree_social_media_post_images do |t|
      t.references :social_media_post
      t.references :image
    end
  end
end
