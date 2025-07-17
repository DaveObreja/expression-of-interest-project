# This will guess the User class
FactoryBot.define do
  factory :user_interest_submission do
    first_name { "John" }
    surname  { "Doe" }
    company_name { "Sample Company" }
    address { "NN9 BAX" }
    number_of_employees { UserInterestSubmission.number_of_employees.keys.first }
    position { "Sample Position" }
    telephone { "02087123456" }
    email { "mything@mything" }
    contact_consent { true }
    monthly_newsletter { true }
    questions { nil }
  end
end
