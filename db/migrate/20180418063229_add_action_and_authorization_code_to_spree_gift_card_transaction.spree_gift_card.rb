# This migration comes from spree_gift_card (originally 20161012071043)
class AddActionAndAuthorizationCodeToSpreeGiftCardTransaction < SpreeExtension::Migration[4.2]
  def change
    add_column :spree_gift_card_transactions, :action, :string
    add_column :spree_gift_card_transactions, :authorization_code, :string
  end
end
