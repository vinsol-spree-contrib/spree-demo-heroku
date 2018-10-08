# This migration comes from spree_third_party_service_manager (originally 20180914110602)
class CreateSpreeThirdPartyServices < SpreeExtension::Migration[4.2]
  def change
    create_table :spree_third_party_services do |t|
      t.string :name
      t.text :script
      t.boolean :enabled, default: false

      t.timestamps null: false
    end
  end
end
