class IiifImageController < ApplicationController
  def show
    @iiif_image = Riiif::Engine.routes.url_helpers.info_path(params[:id])
  end
end
