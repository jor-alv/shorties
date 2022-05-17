require "test_helper"

class ShortysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shortys_index_url
    assert_response :success
  end

  test "should get new" do
    get shortys_new_url
    assert_response :success
  end

  test "should get create" do
    get shortys_create_url
    assert_response :success
  end

  test "should get edit" do
    get shortys_edit_url
    assert_response :success
  end

  test "should get update" do
    get shortys_update_url
    assert_response :success
  end

  test "should get destroy" do
    get shortys_destroy_url
    assert_response :success
  end
end
