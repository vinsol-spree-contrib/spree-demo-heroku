# This migration comes from spree_one_page_stock_management (originally 20180611054011)
class CreateSpreeStockUpdater < ActiveRecord::Migration[4.2]
  def change
    create_table :spree_stock_updaters do |t|
      t.boolean :job_executed, default: false
      t.attachment :data_file
    end
  end
end
