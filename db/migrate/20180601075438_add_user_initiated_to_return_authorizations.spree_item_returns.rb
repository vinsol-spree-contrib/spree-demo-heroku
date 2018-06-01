# This migration comes from spree_item_returns (originally 20161006112925)
class AddUserInitiatedToReturnAuthorizations < SpreeExtension::Migration[4.2]
  def change
    add_column :spree_return_authorizations, :user_initiated, :boolean, default: false
  end
end
