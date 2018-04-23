# This migration comes from spree_social_media_marketing (originally 20160523123441)
class AddPageNameToSpreeFacebookPages < ActiveRecord::Migration
  def change
    add_column :spree_facebook_pages, :page_name, :string
  end
end
