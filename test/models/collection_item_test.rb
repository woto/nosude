require 'test_helper'

class CollectionItemTest < ActiveSupport::TestCase

  test 'CollectionItem не может существовать без collectionable' do
    ci = CollectionItem.new
    ci.valid?
    refute_empty ci.errors[:collectionable]
  end
end
