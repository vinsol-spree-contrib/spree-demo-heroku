require 'csv'

namespace :db do
  desc "Replace Option type"
  task replace_option_type: :environment do
    Spree::OptionType.destroy_all
    CSV.foreach(Rails.root.join('public', 'option_type.csv'), headers: true) do |row|
      option_type = Spree::OptionType.find_or_create_by(name: row['Option Type'], presentation: row['Option Type'])
      option_type.option_values << Spree::OptionValue.create(name: row['Option Value'], presentation: row['Option Value'], image: File.new(Rails.root.join('public', 'option_values', (row['Option Value'] + ".png")) ))
    end
  end
end