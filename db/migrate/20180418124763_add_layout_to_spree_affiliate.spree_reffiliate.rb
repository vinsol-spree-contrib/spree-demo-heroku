# This migration comes from spree_reffiliate (originally 20140913042034)
class AddLayoutToSpreeAffiliate < ActiveRecord::Migration
  def change
    add_column :spree_affiliates, :layout, :string
  end
end
