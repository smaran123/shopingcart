require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get offers" do
    get :offers
    assert_response :success
  end

  test "should get product_flags" do
    get :product_flags
    assert_response :success
  end

  test "should get how_to_buy" do
    get :how_to_buy
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get payment" do
    get :payment
    assert_response :success
  end

  test "should get shipment" do
    get :shipment
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get return_policy" do
    get :return_policy
    assert_response :success
  end

  test "should get new_news_letter" do
    get :new_news_letter
    assert_response :success
  end

end
