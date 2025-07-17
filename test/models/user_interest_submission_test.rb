require "test_helper"
require 'pry'

class UserInterestSubmissionTest < ActiveSupport::TestCase

  test "UserInterestSubmission can be created" do
    this_submission = build :user_interest_submission
    assert this_submission.valid?
    assert this_submission.save
  end

  test "UserInterestSubmission cannot have invalid email" do
    this_submission = build :user_interest_submission, email: "invalidmail"
    assert_not this_submission.valid?
    assert this_submission.errors.first.attribute.equal?(:email)
    assert this_submission.errors.first.type.equal?(:invalid)
  end

  test "Number of employees must be of a valid enum" do
    assert_raise(StandardError) do
      build :user_interest_submission, number_of_employees: "invalidType"
    end

    this_submission = build :user_interest_submission, number_of_employees: "one_to_fifty"

    assert this_submission.valid?
    assert this_submission.save
  end

  test "Telephone must be valid" do
    this_submission = build :user_interest_submission, telephone: "invalidphone"
    assert_not this_submission.valid?
    assert this_submission.errors.first.attribute.equal?(:telephone)
    assert this_submission.errors.first.type.equal?(:invalid_format)
  end
end
