# This migration comes from spree_gift_card (originally 20180404061553)
class AddEnableFieldToGiftCard < ActiveRecord::Migration
  def change
    add_column :spree_gift_cards, :enabled, :boolean, default: false
  end
end
