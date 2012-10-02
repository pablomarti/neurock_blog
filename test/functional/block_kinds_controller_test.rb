require 'test_helper'

class BlockKindsControllerTest < ActionController::TestCase
  setup do
    @block_kind = block_kinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:block_kinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create block_kind" do
    assert_difference('BlockKind.count') do
      post :create, block_kind: { description: @block_kind.description, title: @block_kind.title }
    end

    assert_redirected_to block_kind_path(assigns(:block_kind))
  end

  test "should show block_kind" do
    get :show, id: @block_kind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @block_kind
    assert_response :success
  end

  test "should update block_kind" do
    put :update, id: @block_kind, block_kind: { description: @block_kind.description, title: @block_kind.title }
    assert_redirected_to block_kind_path(assigns(:block_kind))
  end

  test "should destroy block_kind" do
    assert_difference('BlockKind.count', -1) do
      delete :destroy, id: @block_kind
    end

    assert_redirected_to block_kinds_path
  end
end
