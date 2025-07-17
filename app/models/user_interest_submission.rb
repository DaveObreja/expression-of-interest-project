class UserInterestSubmission < ApplicationRecord
  require 'uk_phone_numbers'

  validates :first_name, :surname, :company_name, :address, :position, 
    :telephone, :email, :contact_consent, :monthly_newsletter, presence: true


  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :contact_consent, acceptance: true

  enum number_of_employees: {
    one_to_fifty: 0,
    fifty_one_to_hundred: 1,
    one_hundred_plus: 2,
    five_hundred_plus: 3
  }


  validates :number_of_employees, inclusion: { in: UserInterestSubmission.number_of_employees.keys }

  validate :valid_telephone?

  before_save :format_phone_number

  def valid_telephone?
    unless UKPhoneNumbers.valid?(telephone)
      errors.add(:telephone, :invalid_format, message: "cannot be invalid uk format")
    end
  end

  def format_phone_number
    self.telephone = UKPhoneNumbers.format(telephone)
  end
end
