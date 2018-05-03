# This migration comes from spree_promo_users_codes (originally 20160813025219)
class AddHasManyCodesToSpreePromotions < SpreeExtension::Migration[4.2]
  def change
    add_column :spree_promotions, :multi_coupon, :boolean, default: false, null: false
  end
end
