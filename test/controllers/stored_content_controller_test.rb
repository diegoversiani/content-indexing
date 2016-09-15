require 'test_helper'

class StoredContentControllerTest < ActionController::TestCase
  test "should get store" do
    get :store
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

end
