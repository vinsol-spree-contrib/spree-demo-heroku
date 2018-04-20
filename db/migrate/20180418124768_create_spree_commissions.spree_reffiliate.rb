# This migration comes from spree_reffiliate (originally 20170213064445)
class CreateSpreeCommissions < ActiveRecord::Migration
  def change
    create_table :spree_commissions do |t|
      t.references :affiliate, index: true

      t.datetime :start_date, index: true
      t.datetime :end_date, index: true
      t.boolean :paid, default: false, null: false
      t.decimal :total
      t.integer :transactions_count

      t.timestamps null: false
    end
  end
end
