require 'base58'

class IiifImageController < ApplicationController
  def show
    @id = params[:id]
    @flickr_url = "http://flic.kr/p/#{Base58.encode(@id.to_i)}"
    @iiif_image = Riiif::Engine.routes.url_helpers.info_path(params[:id])
  end
end
