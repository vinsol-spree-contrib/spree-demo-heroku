require 'csv'

namespace :db do
  desc "Replace Property"
  task replace_property: :environment do
    Spree::Property.destroy_all
    CSV.foreach(Rails.root.join('public', 'property.csv'), headers: true) do |row|
      Spree::Property.create(name: row['Property Name'], presentation: row['Presentation Name'])
    end
  end
end