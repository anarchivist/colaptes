require 'flickraw'

Riiif::Image.file_resolver = Riiif::HTTPFileResolver.new

Riiif::Image.file_resolver.id_to_uri = lambda do |id|
  FlickRaw.url_o(flickr.photos.getInfo(photo_id: id))
end