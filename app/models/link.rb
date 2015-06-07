class Link < ActiveRecord::Base
  has_one :collection_item, as: :collectionable

  validates :url, presence: true
end
