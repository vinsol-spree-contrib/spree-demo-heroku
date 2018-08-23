require 'csv'

namespace :db do
  desc "Replace Products"
  task replace_products: :environment do
    Spree::Order.destroy_all
    flag = 47
    CSV.foreach(Rails.root.join('public', 'products.csv'), headers: true) do |row|
      product = Spree::Product.create(name: row['name'], price: row['price'], shipping_category_id: Spree::ShippingCategory.first.id, description: row['description'], available_on: Date.today)
      row['Taxon'].split(',').each do |taxon|
        product.taxons << Spree::Taxon.find_by(name: taxon)
      end
      Dir.entries(Rails.root.join('public', 'product_images', row['name'])).sort.each do |item|
        next if item == '.' or item == '..' or File.directory?(Rails.root.join('public', 'product_images', row['name'], item))
        product.images << Spree::Image.create(id: flag , attachment: File.new(Rails.root.join('public', 'product_images', row['name'], item)))
        flag = flag + 1
      end
      if row['Option Types']
        row['Option Types'].split(',').each do |option_type|
          product.option_types << Spree::OptionType.find_by(name: option_type)
        end
      end
      if row['Variant']
        variant_0 = Spree::OptionType.find_by_name('Frame Color').id
        variant_1 = Spree::OptionType.find_by_name('Lens Colour').id
        row['Variant'].split(',').each do |option_value|
          variant = Spree::Variant.new(product_id: product.id)
          variant_flag = 0
          option_value.split('-').each do |value|
            variant.option_values << Spree::OptionValue.find_by(name: value, option_type_id: eval("variant_#{variant_flag}"))
            variant_flag += 1;
          end
          variant.save
          Dir.entries(Rails.root.join('public', 'product_images', row['name'], option_value)).sort.each do |item|
            next if item == '.' or item == '..'
            variant.images << Spree::Image.create(id: flag, attachment: File.new(Rails.root.join('public', 'product_images', row['name'], option_value, item)))
            flag = flag + 1
          end
          product.variants << variant
        end
      end
    end
    Spree::Product.first(16).map(&:really_destroy!)
  end
end
