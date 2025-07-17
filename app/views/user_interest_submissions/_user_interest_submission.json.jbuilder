json.extract! user_interest_submission, :id, :first_name, :surname, :company_name, :address, :number_of_employees, :position, :telephone, :email, :contact_consent, :monthly_newsletter, :questions, :created_at, :updated_at
json.url user_interest_submission_url(user_interest_submission, format: :json)
