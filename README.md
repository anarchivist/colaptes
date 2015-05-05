colaptes
===

`colaptes` is a proof of concept translator that presents images from Flickr
using the [International Image Interoperability Framework](http://iiif.io)
(IIIF). `colaptes` is built using Ruby on Rails, [Riiif](https://github.com/curationexperts/riiif),
[Flickraw](https://github.com/hanklords/flickraw), and [OpenSeadragon](http://openseadragon.github.io/).

About the name
---

*[Colaptes](http://en.wikipedia.org/wiki/Colaptes)* is the genus of
woodpeckers which [includes flickers](http://eol.org/pages/18843/overview).

Getting started
---

* Clone this repository
* Install the dependencies: `bundle`
* Copy `config/initalizers/flickr_api_keys.rb.example` to
`config/initalizers/flickr_api_keys.rb` and add your Flickr API keys. 
* Start Rails: `bundle exec rails s`
* Try requesting metadata for images, or images themselves:
    * `http://localhost:3000/image-service/14277523416/info.json`
    * `http://localhost:3000/image-service/14277523416/full/full/0/native.jpg`
    * `http://localhost:3000/image-service/14277523416/full/full/90/bitonal.jpg`
* Load an image over IIIF in a OpenSeadragon viewer:
    * `http://localhost:3000/iiif_image/14277523416`

Known issues
---

* `colaptes` currently only provides resources using version 1.1 of the 
IIIF Image API.
* Performance is slow, since each remote image needs to be requested.
* Metadata from images should be pulled directly from the Flickr API 
whenever possible.

License
---

* MIT