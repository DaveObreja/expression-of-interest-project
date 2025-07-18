class AddColumnSalesNotesToUserInterestSubmissions < ActiveRecord::Migration[7.1]
  def change
    add_column :user_interest_submissions, :sales_notes, :text
  end
end
