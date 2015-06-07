class Photo < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_one :collection_item, as: :collectionable

  validates :image, presence: true
end
