class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

    process eager: true
    process convert: 'jpg'
    process :resize_to_fill => [nil, 350, :north]

  # version :standard do
  # end

  # version :thumbnail do
  #   resize_to_fit(50, 50)
  # end

end

