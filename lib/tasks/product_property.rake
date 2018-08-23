require 'csv'

namespace :db do
  desc "Product Property"
  task product_property: :environment do
    Spree::ProductProperty.destroy_all
    CSV.foreach(Rails.root.join('public', 'product_properties.csv'), headers: true) do |row|
      product = Spree::Product.find_by_name(row['product'])
      row.headers.each do |property_name|
        property = Spree::Property.find_by_name(property_name)
        if property && row[property_name]
          product.product_properties << Spree::ProductProperty.create(value: row[property_name], property_id: property.id)
        end
      end
    end
  end
end
