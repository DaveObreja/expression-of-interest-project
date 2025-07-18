module UserInterestSubmissionsHelper
  def format_number_of_employees(key)
    case key
    when "one_to_fifty"
      "1 to 50"
    when "fifty_one_to_hundred"
      "51 to 100"
    when "one_hundred_plus"
      "100+"
    when "five_hundred_plus"
      "500+"
    else
      key
    end
  end
end
