require "test_helper"

class ShortiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shorties_index_url
    assert_response :success
  end

  test "should get new" do
    get shorties_new_url
    assert_response :success
  end

  test "should get create" do
    get shorties_create_url
    assert_response :success
  end

  test "should get edit" do
    get shorties_edit_url
    assert_response :success
  end

  test "should get update" do
    get shorties_update_url
    assert_response :success
  end

  test "should get destroy" do
    get shorties_destroy_url
    assert_response :success
  end
end
