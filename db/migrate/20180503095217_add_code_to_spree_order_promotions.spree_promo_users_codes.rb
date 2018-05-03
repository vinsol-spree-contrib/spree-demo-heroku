# This migration comes from spree_promo_users_codes (originally 20160809072411)
class AddCodeToSpreeOrderPromotions < SpreeExtension::Migration[4.2]
  def change
    add_column :spree_order_promotions, :code, :string
  end
end
