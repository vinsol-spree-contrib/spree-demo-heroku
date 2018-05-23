# This migration comes from spree_simple_admin_activity_tracker (originally 20180519184308)
class CreateSpreeTrackings < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_trackings do |t|
    	t.text :entity_errors
      t.text :flash
      t.text :request_parameters
      t.text :updated_parameters
      t.string :ip_address
      t.string :entity_type
      t.integer :response_code
      t.references :user

      t.timestamps null: false
    end
  end
end
