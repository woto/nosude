class CollectionItem < ActiveRecord::Base
  belongs_to :collection
  belongs_to :collectionable, polymorphic: true, dependent: :destroy, required: true
  accepts_nested_attributes_for :collectionable

  def to_partial_path
    "collection_items/#{collectionable.class.name.underscore}"
  end

  def build_collectionable(args)
    self.collectionable = collectionable_type.constantize.new(args)
  end

end
