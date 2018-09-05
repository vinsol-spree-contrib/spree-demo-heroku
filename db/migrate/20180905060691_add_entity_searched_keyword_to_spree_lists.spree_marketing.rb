# This migration comes from spree_marketing (originally 20160503080750)
class AddEntitySearchedKeywordToSpreeLists < ActiveRecord::Migration[5.0]
  def change
    change_table :spree_marketing_lists do |t|
      t.references :entity, polymorphic: true
      t.string :searched_keyword
    end
  end
end
