# This migration comes from spree_digital_assets (originally 20180711131600)
class CreateSpreeBanner < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_banners do |t|
      t.string :title
      t.boolean :active, default: false, null: false
      t.string :link
      t.attachment :attachment
      t.timestamps
    end
  end
end
