require 'test_helper'

class CommonTest < ActionController::TestCase

  setup do
    @controller = Ckpages::PublicController.new
  end

  test 'Не авторизованный пользователь не должен видть ссылку Личное' do
    get :show, path: ''
    assert_select "a", {count: 0, text: 'Личные'}
  end

  test 'Авторизованный пользователь должен видеть ссылку Личное' do
    sign_in users(:one)
    get :show, path: ''
    assert_select "a", {count: 1, text: 'Личные'}
  end

end
