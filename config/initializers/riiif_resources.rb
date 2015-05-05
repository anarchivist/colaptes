Riiif::Image.file_resolver = Riiif::HTTPFileResolver.new

Riiif::Image.file_resolver.id_to_uri = lambda do |id|
  "https://farm3.staticflickr.com/2817/11134250813_58dca0ebe1_o.jpg"
end