class Post < ActiveRecord::Base
  belongs_to :user
  has_one :featured, -> { where context: 'featured_image' }, as: :assetable, class_name: "Asset::Image", dependent: :destroy
  has_many :images, -> { where context: 'gallery_images' }, as: :assetable, class_name: "Asset::Image", dependent: :destroy
  has_many :audios, -> { where context: 'audios' }, as: :assetable, class_name: "Asset::Audio", dependent: :destroy
end
