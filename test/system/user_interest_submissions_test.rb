require "application_system_test_case"

class UserInterestSubmissionsTest < ApplicationSystemTestCase
  setup do
    @user_interest_submission = user_interest_submissions(:one)
  end

  test "visiting the index" do
    visit user_interest_submissions_url
    assert_selector "h1", text: "User interest submissions"
  end

  test "should create user interest submission" do
    visit user_interest_submissions_url
    click_on "New user interest submission"

    fill_in "Address", with: @user_interest_submission.address
    fill_in "Company name", with: @user_interest_submission.company_name
    check "Contact consent" if @user_interest_submission.contact_consent
    fill_in "Email", with: @user_interest_submission.email
    fill_in "First name", with: @user_interest_submission.first_name
    check "Monthly newsletter" if @user_interest_submission.monthly_newsletter
    fill_in "Number of employees", with: @user_interest_submission.number_of_employees
    fill_in "Position", with: @user_interest_submission.position
    fill_in "Questions", with: @user_interest_submission.questions
    fill_in "Surname", with: @user_interest_submission.surname
    fill_in "Telephone", with: @user_interest_submission.telephone
    click_on "Create User interest submission"

    assert_text "User interest submission was successfully created"
    click_on "Back"
  end

  test "should update User interest submission" do
    visit user_interest_submission_url(@user_interest_submission)
    click_on "Edit this user interest submission", match: :first

    fill_in "Address", with: @user_interest_submission.address
    fill_in "Company name", with: @user_interest_submission.company_name
    check "Contact consent" if @user_interest_submission.contact_consent
    fill_in "Email", with: @user_interest_submission.email
    fill_in "First name", with: @user_interest_submission.first_name
    check "Monthly newsletter" if @user_interest_submission.monthly_newsletter
    fill_in "Number of employees", with: @user_interest_submission.number_of_employees
    fill_in "Position", with: @user_interest_submission.position
    fill_in "Questions", with: @user_interest_submission.questions
    fill_in "Surname", with: @user_interest_submission.surname
    fill_in "Telephone", with: @user_interest_submission.telephone
    click_on "Update User interest submission"

    assert_text "User interest submission was successfully updated"
    click_on "Back"
  end

  test "should destroy User interest submission" do
    visit user_interest_submission_url(@user_interest_submission)
    click_on "Destroy this user interest submission", match: :first

    assert_text "User interest submission was successfully destroyed"
  end
end
