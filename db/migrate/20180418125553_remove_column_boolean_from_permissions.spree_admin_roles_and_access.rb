# This migration comes from spree_admin_roles_and_access (originally 20170509082144)
class RemoveColumnBooleanFromPermissions < ActiveRecord::Migration
  def change
    remove_column :spree_permissions, :boolean, :boolean, default: true
  end
end
