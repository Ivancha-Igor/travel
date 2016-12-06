class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave

  # storage :file
  #
  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  process resize_to_fill: [800,600]

  version :thumb do
    process resize_to_fill: [300,220]
  end

  def public_id
    basename = File.basename(original_filename, File.extname(original_filename))
    "#{basename}"
  end

end
