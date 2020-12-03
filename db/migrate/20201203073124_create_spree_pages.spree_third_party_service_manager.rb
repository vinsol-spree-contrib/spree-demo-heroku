# This migration comes from spree_third_party_service_manager (originally 20180919124848)
class CreateSpreePages < SpreeExtension::Migration[4.2]
  def change
    create_table :spree_pages do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
