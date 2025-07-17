require "test_helper"

class UserInterestSubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_interest_submission = user_interest_submissions(:one)
  end

  test "should get index" do
    get user_interest_submissions_url
    assert_response :success
  end

  test "should get new" do
    get new_user_interest_submission_url
    assert_response :success
  end

  test "should create user_interest_submission" do
    assert_difference("UserInterestSubmission.count") do
      post user_interest_submissions_url, params: { user_interest_submission: { address: @user_interest_submission.address, company_name: @user_interest_submission.company_name, contact_consent: @user_interest_submission.contact_consent, email: @user_interest_submission.email, first_name: @user_interest_submission.first_name, monthly_newsletter: @user_interest_submission.monthly_newsletter, number_of_employees: @user_interest_submission.number_of_employees, position: @user_interest_submission.position, questions: @user_interest_submission.questions, surname: @user_interest_submission.surname, telephone: @user_interest_submission.telephone } }
    end

    assert_redirected_to user_interest_submission_url(UserInterestSubmission.last)
  end

  test "should show user_interest_submission" do
    get user_interest_submission_url(@user_interest_submission)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_interest_submission_url(@user_interest_submission)
    assert_response :success
  end

  test "should update user_interest_submission" do
    patch user_interest_submission_url(@user_interest_submission), params: { user_interest_submission: { address: @user_interest_submission.address, company_name: @user_interest_submission.company_name, contact_consent: @user_interest_submission.contact_consent, email: @user_interest_submission.email, first_name: @user_interest_submission.first_name, monthly_newsletter: @user_interest_submission.monthly_newsletter, number_of_employees: @user_interest_submission.number_of_employees, position: @user_interest_submission.position, questions: @user_interest_submission.questions, surname: @user_interest_submission.surname, telephone: @user_interest_submission.telephone } }
    assert_redirected_to user_interest_submission_url(@user_interest_submission)
  end

end
