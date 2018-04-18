# This migration comes from spree_reffiliate (originally 20140907042024)
class CreateSpreeAffiliates < ActiveRecord::Migration
  def change
    create_table :spree_affiliates do |t|
      t.string :name
      t.string :path
      t.string :partial
    end
  end
end
