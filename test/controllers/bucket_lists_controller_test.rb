require 'test_helper'

class BucketListsControllerTest < ActionController::TestCase
  setup do
    @bucket_list = bucket_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bucket_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bucket_list" do
    assert_difference('BucketList.count') do
      post :create, bucket_list: { comment: @bucket_list.comment, image: @bucket_list.image, location: @bucket_list.location, mates: @bucket_list.mates, name: @bucket_list.name, status: @bucket_list.status, timing: @bucket_list.timing }
    end

    assert_redirected_to bucket_list_path(assigns(:bucket_list))
  end

  test "should show bucket_list" do
    get :show, id: @bucket_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bucket_list
    assert_response :success
  end

  test "should update bucket_list" do
    patch :update, id: @bucket_list, bucket_list: { comment: @bucket_list.comment, image: @bucket_list.image, location: @bucket_list.location, mates: @bucket_list.mates, name: @bucket_list.name, status: @bucket_list.status, timing: @bucket_list.timing }
    assert_redirected_to bucket_list_path(assigns(:bucket_list))
  end

  test "should destroy bucket_list" do
    assert_difference('BucketList.count', -1) do
      delete :destroy, id: @bucket_list
    end

    assert_redirected_to bucket_lists_path
  end
end
