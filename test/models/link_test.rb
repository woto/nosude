require 'test_helper'

class LinkTest < ActiveSupport::TestCase

  test 'Объект не может сущетсововать без ссылки' do
    l = Link.new
    l.valid?
    refute_empty l.errors[:url]
  end

end
