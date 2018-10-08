# This migration comes from spree_third_party_service_manager (originally 20180919125752)
class CreateJoinTableSpreePageThirdPartyServices < SpreeExtension::Migration[4.2]
  def change
    create_table :spree_page_third_party_services do |t|
      t.references :page, index: true
      t.references :third_party_service, index: { name: 'indx_spree_page_third_party_services_on_third_party_service_id' }

      t.index [:page_id, :third_party_service_id], name: 'spree_page_third_party_services_page_id_third_party_service_id'
    end
  end
end
