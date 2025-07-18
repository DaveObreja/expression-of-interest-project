class UserInterestSubmissionsController < ApplicationController
  include UserInterestSubmissionsHelper
  before_action :set_user_interest_submission, only: %i[ show edit update ]
  before_action :set_number_of_employees, only: %i[ new create edit update ]
  http_basic_authenticate_with name: "Admin", password: "IntentionallyWeakPassword", except: %i[ new create ]

  # GET /user_interest_submissions or /user_interest_submissions.json
  def index
    @user_interest_submissions = UserInterestSubmission.all
    if params["search_query"].present?
      @user_interest_submissions = @user_interest_submissions.where("first_name ILIKE ? OR surname ILIKE ?", "%#{params["search_query"]}%", "%#{params["search_query"]}%")
    end
  end

  # GET /user_interest_submissions/1 or /user_interest_submissions/1.json
  def show
  end

  # GET /user_interest_submissions/new
  def new
    @user_interest_submission = UserInterestSubmission.new
    @sent_form = false 
    @sent_form = true if params["form_sent_success"].present?
  end

  # GET /user_interest_submissions/1/edit
  def edit
  end

  # POST /user_interest_submissions or /user_interest_submissions.json
  def create
    @user_interest_submission = UserInterestSubmission.new(user_interest_submission_params)

    if @user_interest_submission.save
      redirect_to new_user_interest_submission_path(form_sent_success: true, scroll_to: "success") 
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_interest_submissions/1 or /user_interest_submissions/1.json
  def update
    params[:user_interest_submission][:telephone] = params[:user_interest_submission][:telephone].gsub(" ", "")
    if @user_interest_submission.update(admin_user_interest_submission_params)
      redirect_to @user_interest_submission, notice: "User interest submission was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_interest_submission
      @user_interest_submission = UserInterestSubmission.find(params[:id])
    end

    def set_number_of_employees
      @number_of_employees = UserInterestSubmission.number_of_employees.keys.map{ |k| [format_number_of_employees(k), k] }
    end

    # Only allow a list of trusted parameters through.
    def user_interest_submission_params
      params.require(:user_interest_submission).permit(
        :first_name, :surname, :company_name, :address, :number_of_employees, :position, 
        :telephone, :email, :contact_consent, :monthly_newsletter, :questions)
    end

    def admin_user_interest_submission_params
      params.require(:user_interest_submission).permit(
        :first_name, :surname, :company_name, :address, :number_of_employees, :position, 
        :telephone, :email, :contact_consent, :monthly_newsletter, :questions, :sales_notes)
    end
end
