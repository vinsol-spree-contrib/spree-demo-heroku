# This migration comes from spree_video_support (originally 20160425100812)
class CreateSpreeSupportTicket < ActiveRecord::Migration
  def change
    create_table :spree_support_tickets do |t|
      t.references :support_agent, index: true
      t.references :user, index: true
      t.string :customer_email
      t.string :customer_first_name
      t.string :customer_last_name
      t.text :purpose, limit: 2000
      t.text :closing_remarks, limit: 2000
      t.references :closed_by, index: true
      t.string :closed_by_email
      t.boolean :active, default: true
      t.string :type
      t.string :unique_id
      t.datetime :support_started_at
      t.datetime :support_ended_at
      t.timestamps
    end
  end
end
