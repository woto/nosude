require 'test_helper'

class PhotoTest < ActiveSupport::TestCase

  test 'Объект не может сущетсововать без ссылки' do
    p = Photo.new
    p.valid?
    refute_empty p.errors[:image]
  end

end
