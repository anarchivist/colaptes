Rails.application.routes.draw do
  mount Riiif::Engine => '/image-service'
end
