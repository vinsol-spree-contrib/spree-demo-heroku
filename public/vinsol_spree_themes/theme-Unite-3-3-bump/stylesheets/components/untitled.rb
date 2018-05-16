taxonomy = Spree::Taxonomy.first

taxonomy.root.children.each do |taxon|
  puts ':' * 100
  puts "Uploading product images for: #{taxonomy.name} > #{taxon.name}"
  puts ':' * 100

  filedir = taxon.name
  image_files = Dir["data/#{filedir}/*.jpg", "data/#{filedir}/*.jpeg"]
  next if image_files.blank?

  image_files.shuffle!

  taxon.products.each_with_index do |product, i|
    product.images.destroy_all

    image = product.images.new
    filename = (i < image_files.size) ? image_files[i] : image_files.sample
    image.attachment = File.new(Rails.root.join(filename))
    image.save!
  end
end
