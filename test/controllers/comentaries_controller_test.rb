require 'test_helper'

class ComentariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comentary = comentaries(:one)
  end

  test "should get index" do
    get comentaries_url
    assert_response :success
  end

  test "should get new" do
    get new_comentary_url
    assert_response :success
  end

  test "should create comentary" do
    assert_difference('Comentary.count') do
      post comentaries_url, params: { comentary: { content: @comentary.content, date: @comentary.date, publication_id: @comentary.publication_id } }
    end

    assert_redirected_to comentary_url(Comentary.last)
  end

  test "should show comentary" do
    get comentary_url(@comentary)
    assert_response :success
  end

  test "should get edit" do
    get edit_comentary_url(@comentary)
    assert_response :success
  end

  test "should update comentary" do
    patch comentary_url(@comentary), params: { comentary: { content: @comentary.content, date: @comentary.date, publication_id: @comentary.publication_id } }
    assert_redirected_to comentary_url(@comentary)
  end

  test "should destroy comentary" do
    assert_difference('Comentary.count', -1) do
      delete comentary_url(@comentary)
    end

    assert_redirected_to comentaries_url
  end
end
