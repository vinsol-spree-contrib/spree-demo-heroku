# This migration comes from spree_reffiliate (originally 20170413182238)
class AddTimeStampToReferredRecords < ActiveRecord::Migration
  def change
    add_timestamps(:spree_referred_records)
  end
end
