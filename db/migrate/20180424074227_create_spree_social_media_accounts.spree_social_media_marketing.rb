# This migration comes from spree_social_media_marketing (originally 20160502154243)
class CreateSpreeSocialMediaAccounts < ActiveRecord::Migration[4.2]
  def change
    create_table :spree_social_media_accounts do |t|
      t.references :store
      t.string :type
      t.string :name
      t.string :auth_token
      t.string :auth_secret
      t.string :uid

      t.timestamps
    end
  end
end
