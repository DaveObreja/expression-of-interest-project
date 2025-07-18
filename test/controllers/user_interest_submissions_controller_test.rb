require "test_helper"

class UserInterestSubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_interest_submission = create :user_interest_submission
  end

  test "should get index" do
    get user_interest_submissions_url, 
      headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('Admin', 'IntentionallyWeakPassword') }
    assert_response :success
  end

  test "should get new" do
    get new_user_interest_submission_url
    assert_response :success
  end

  test "should create user_interest_submission" do
    assert_difference("UserInterestSubmission.count") do
      post user_interest_submissions_url, 
        params: { 
          user_interest_submission: { 
            address: @user_interest_submission.address, 
            company_name: @user_interest_submission.company_name, 
            contact_consent: @user_interest_submission.contact_consent, 
            email: @user_interest_submission.email, 
            first_name: @user_interest_submission.first_name, 
            monthly_newsletter: @user_interest_submission.monthly_newsletter, 
            number_of_employees: @user_interest_submission.number_of_employees, 
            position: @user_interest_submission.position, 
            questions: @user_interest_submission.questions, 
            surname: @user_interest_submission.surname, 
            telephone: @user_interest_submission.telephone.gsub(" ", "") 
          }
        }
    end

    assert_redirected_to new_user_interest_submission_path(form_sent_success: true, scroll_to: "success") 
  end

  test "should show user_interest_submission" do
    get user_interest_submission_url(@user_interest_submission),
      headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('Admin', 'IntentionallyWeakPassword') }
    assert_response :success
  end

  test "should get edit" do
    get edit_user_interest_submission_url(@user_interest_submission),
      headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('Admin', 'IntentionallyWeakPassword') }
    assert_response :success
  end

  test "should update user_interest_submission with sales notes" do
    assert_changes -> { @user_interest_submission.reload.sales_notes } do
      patch user_interest_submission_url(@user_interest_submission), 
        params: { 
          user_interest_submission: { 
            address: @user_interest_submission.address, 
            company_name: @user_interest_submission.company_name, 
            contact_consent: @user_interest_submission.contact_consent, 
            email: @user_interest_submission.email, 
            first_name: @user_interest_submission.first_name, 
            monthly_newsletter: @user_interest_submission.monthly_newsletter, 
            number_of_employees: @user_interest_submission.number_of_employees, 
            position: @user_interest_submission.position, 
            questions: @user_interest_submission.questions, 
            surname: @user_interest_submission.surname, 
            telephone: @user_interest_submission.telephone,
            sales_notes: "Sample sales notes"
          } 
        },
        headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('Admin', 'IntentionallyWeakPassword') }
    end

    assert_redirected_to user_interest_submission_url(@user_interest_submission)
  end

end
