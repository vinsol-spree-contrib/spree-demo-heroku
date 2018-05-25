# This migration comes from vinsol_spree_themes (originally 20170628072452)
class VinsolSpreeThemesCreateThemesAndThemesTemplatesTable < ActiveRecord::Migration[5.0]

  def change
    create_table :spree_themes do |t|
      t.string :name
      t.string :state
      t.attachment :template_file
    end

    create_table :spree_themes_templates do |t|
      t.string :name
      t.text :body
      t.string :path
      t.string :format
      t.string :locale
      t.string :handler
      t.boolean :partial, default: false
      t.references :theme, index: true

      t.timestamps
    end
  end

end
