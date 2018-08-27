require 'csv'

namespace :db do
  desc "Replace default taxonomies"
  task replace_taxonomies: :environment do
    Spree::Taxon.destroy_all # remove existing taxon
    category_parent_taxon = Spree::Taxon.create(name: 'Categories')
    brand_parent_taxon = Spree::Taxon.create(name: 'Brands')
    category_taxonomy = Spree::Taxonomy.find_or_create_by(name: 'Categories')
    brand_taxonomy = Spree::Taxonomy.find_or_create_by(name: 'Brands')
    category_taxonomy.taxons << category_parent_taxon
    brand_taxonomy.taxons << brand_parent_taxon
    CSV.foreach(Rails.root.join('public', 'taxon_csv.csv'), headers: true) do |row|
      parent_taxonomy = Spree::Taxon.find_by(name: row['Parent Taxon'])
      taxon = Spree::Taxon.create(parent_id: parent_taxonomy.id, name: row['Taxon Name'])
      if row['Taxonomy'] == category_taxonomy.name
        category_taxonomy.taxons << taxon
      else
        brand_taxonomy.taxons << taxon
      end
    end
  end
end