require 'test_helper'

class ResourcesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resources_index_url
    assert_response :success
  end

  test "should get create" do
    get resources_create_url
    assert_response :success
  end

  test "should get update" do
    get resources_update_url
    assert_response :success
  end

  test "should get delete" do
    get resources_delete_url
    assert_response :success
  end

end
