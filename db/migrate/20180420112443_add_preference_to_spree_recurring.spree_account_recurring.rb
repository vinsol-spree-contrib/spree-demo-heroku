# This migration comes from spree_account_recurring (originally 20141218173349)
class AddPreferenceToSpreeRecurring < ActiveRecord::Migration
  def change
    add_column :spree_recurrings, :preferences, :text
  end
end
