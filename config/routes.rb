Rails.application.routes.draw do
  get 'iiif_image/:id', to: 'iiif_image#show'

  mount Riiif::Engine => '/image-service'
end
