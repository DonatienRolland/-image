class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

    process eager: true
    process convert: 'jpg'
    process :resize_to_fill => [nil, 900, :north]

end

