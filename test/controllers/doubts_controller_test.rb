require 'test_helper'

class DoubtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doubt = doubts(:one)
  end

  test "should get index" do
    get doubts_url
    assert_response :success
  end

  test "should get new" do
    get new_doubt_url
    assert_response :success
  end

  test "should create doubt" do
    assert_difference('Doubt.count') do
      post doubts_url, params: { doubt: { answer: @doubt.answer, question_id: @doubt.question_id } }
    end

    assert_redirected_to doubt_url(Doubt.last)
  end

  test "should show doubt" do
    get doubt_url(@doubt)
    assert_response :success
  end

  test "should get edit" do
    get edit_doubt_url(@doubt)
    assert_response :success
  end

  test "should update doubt" do
    patch doubt_url(@doubt), params: { doubt: { answer: @doubt.answer, question_id: @doubt.question_id } }
    assert_redirected_to doubt_url(@doubt)
  end

  test "should destroy doubt" do
    assert_difference('Doubt.count', -1) do
      delete doubt_url(@doubt)
    end

    assert_redirected_to doubts_url
  end
end
