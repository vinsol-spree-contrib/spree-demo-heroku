# This migration comes from spree_variant_options (originally 20120213174249)
class AddImageToOptionValues < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_option_values, :image_file_name,    :string
    add_column :spree_option_values, :image_content_type, :string
    add_column :spree_option_values, :image_file_size,    :integer
    add_column :spree_option_values, :image_updated_at,   :datetime
  end
end
