require 'csv'

namespace :db do
  desc "Replace Products"
  task replace_products: :environment do
    Spree::Order.destroy_all
    Spree::Product.destroy_all
    Spree::Variant.destroy_all
    CSV.foreach(Rails.root.join('public', 'products.csv'), headers: true) do |row|
      product = Spree::Product.create(name: row['name'], price:row['price'], shipping_category_id: Spree::ShippingCategory.first.id, description: row['description'], available_on: Date.today)
      row['Taxon'].split(',').each do |taxon|
        product.taxons << Spree::Taxon.find_by(name: taxon)
      end
      Dir.foreach(Rails.root.join('public', 'product_images', row['name'])) do |item|
        next if item == '.' or item == '..' or File.directory?(Rails.root.join('public', 'product_images', row['name'], item))
        product.images << Spree::Image.new(attachment: File.new(Rails.root.join('public', 'product_images', row['name'], item)))
      end
      if row['Option Types']
        row['Option Types'].split(',').each do |option_type|
          product.option_types << Spree::OptionType.find_by(name: option_type)
        end
      end
      if row['Variant']
        row['Variant'].split(',').each do |option_value|
          variant = Spree::Variant.new(product_id: product.id)
          variant.option_values << Spree::OptionValue.find_by_name(option_value)
          variant.save
          Dir.foreach(Rails.root.join('public', 'product_images', row['name'], option_value)) do |item|
            next if item == '.' or item == '..'
            variant.images << Spree::Image.new(attachment: File.new(Rails.root.join('public', 'product_images', row['name'], option_value, item)))
          end
          product.variants << variant
        end
      end
    end
  end
end
