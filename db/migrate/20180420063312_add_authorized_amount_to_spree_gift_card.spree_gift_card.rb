# This migration comes from spree_gift_card (originally 20161012102321)
class AddAuthorizedAmountToSpreeGiftCard < SpreeExtension::Migration[4.2]
  def change
    add_column :spree_gift_cards, :authorized_amount, :decimal, precision: 8, scale: 2, null: false, default: 0.0
  end
end
