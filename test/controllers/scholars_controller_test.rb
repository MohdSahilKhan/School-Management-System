require "test_helper"

class ScholarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scholars_index_url
    assert_response :success
  end

  test "should get new" do
    get scholars_new_url
    assert_response :success
  end

  test "should get edit" do
    get scholars_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get scholars_destroy_url
    assert_response :success
  end
end
