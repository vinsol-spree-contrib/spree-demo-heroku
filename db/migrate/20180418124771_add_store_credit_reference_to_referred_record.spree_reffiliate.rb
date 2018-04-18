# This migration comes from spree_reffiliate (originally 20170413065148)
class AddStoreCreditReferenceToReferredRecord < ActiveRecord::Migration
  def change
    add_reference :spree_referred_records, :store_credit, index: true
  end
end
