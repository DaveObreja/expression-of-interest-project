class CreateUserInterestSubmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :user_interest_submissions do |t|
      t.string :first_name, null: false
      t.string :surname, null: false
      t.string :company_name, null: false
      t.string :address, null: false
      t.integer :number_of_employees, null: false
      t.string :position, null: false
      t.text :telephone, null: false
      t.string :email, null: false
      t.boolean :contact_consent, null: false, default: false
      t.boolean :monthly_newsletter, null: false, default: false
      t.text :questions

      t.timestamps
    end
  end
end
