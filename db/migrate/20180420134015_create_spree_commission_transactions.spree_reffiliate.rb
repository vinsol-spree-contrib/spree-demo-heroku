# This migration comes from spree_reffiliate (originally 20170213064416)
class CreateSpreeCommissionTransactions < ActiveRecord::Migration[4.2]
  def change
    create_table :spree_commission_transactions do |t|
      t.references :affiliate, index: true
      t.references :commission, index: true

      t.decimal :amount
      t.boolean :locked, default: false, null: false

      t.references :commissionable, polymorphic: true

      t.timestamps null: false
    end
  end
end
