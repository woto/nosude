class Collection < ActiveRecord::Base
  belongs_to :user
  has_many :collection_items, dependent: :destroy
  accepts_nested_attributes_for :collection_items, allow_destroy: true

  validates :title, presence: true
  validates :collection_items, presence: {message: 'Добавьте пожалуйста хотя бы один элемент коллекции'}
end
