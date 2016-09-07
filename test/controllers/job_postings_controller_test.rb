require 'test_helper'

class JobPostingsControllerTest < ActionController::TestCase
  setup do
    @job_posting = job_postings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_postings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_posting" do
    assert_difference('JobPosting.count') do
      post :create, job_posting: { buyer_id: @job_posting.buyer_id, description: @job_posting.description, estimated_time: @job_posting.estimated_time, job_name: @job_posting.job_name, skills_required: @job_posting.skills_required }
    end

    assert_redirected_to job_posting_path(assigns(:job_posting))
  end

  test "should show job_posting" do
    get :show, id: @job_posting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_posting
    assert_response :success
  end

  test "should update job_posting" do
    patch :update, id: @job_posting, job_posting: { buyer_id: @job_posting.buyer_id, description: @job_posting.description, estimated_time: @job_posting.estimated_time, job_name: @job_posting.job_name, skills_required: @job_posting.skills_required }
    assert_redirected_to job_posting_path(assigns(:job_posting))
  end

  test "should destroy job_posting" do
    assert_difference('JobPosting.count', -1) do
      delete :destroy, id: @job_posting
    end

    assert_redirected_to job_postings_path
  end
end
