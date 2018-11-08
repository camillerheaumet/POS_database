require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
  end

  test "should get new" do
    get store_new_url
    assert_response :success
  end

  test "should get create" do
    get store_create_url
    assert_response :success
  end

  test "should get destroy" do
    get store_destroy_url
    assert_response :success
  end

end
