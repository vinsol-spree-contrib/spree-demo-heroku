# This migration comes from spree_item_returns (originally 20170103111513)
class AddReturnableFieldToProducts < SpreeExtension::Migration[4.2]
  def change
    add_column :spree_products, :returnable, :boolean, default: false
  end
end
