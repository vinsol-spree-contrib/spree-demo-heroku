namespace :db do
  desc "Remove spree brand data"
  task remove_brand_taxonomy: :environment do
    brand_taxonomy = Spree::Taxonomy.find_by(name: 'Brands')
    brand_taxonomy.try(:destroy)
  end
end
