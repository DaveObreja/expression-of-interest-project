class UserInterestSubmissionsController < ApplicationController
  before_action :set_user_interest_submission, only: %i[ show edit update ]

  # GET /user_interest_submissions or /user_interest_submissions.json
  def index
    @user_interest_submissions = UserInterestSubmission.all
  end

  # GET /user_interest_submissions/1 or /user_interest_submissions/1.json
  def show
  end

  # GET /user_interest_submissions/new
  def new
    @user_interest_submission = UserInterestSubmission.new
  end

  # GET /user_interest_submissions/1/edit
  def edit
  end

  # POST /user_interest_submissions or /user_interest_submissions.json
  def create
    @user_interest_submission = UserInterestSubmission.new(user_interest_submission_params)

    respond_to do |format|
      if @user_interest_submission.save
        format.html { redirect_to @user_interest_submission, notice: "User interest submission was successfully created." }
        format.json { render :show, status: :created, location: @user_interest_submission }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_interest_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_interest_submissions/1 or /user_interest_submissions/1.json
  def update
    respond_to do |format|
      if @user_interest_submission.update(user_interest_submission_params)
        format.html { redirect_to @user_interest_submission, notice: "User interest submission was successfully updated." }
        format.json { render :show, status: :ok, location: @user_interest_submission }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_interest_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_interest_submission
      @user_interest_submission = UserInterestSubmission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_interest_submission_params
      params.require(:user_interest_submission).permit(:first_name, :surname, :company_name, :address, :number_of_employees, :position, :telephone, :email, :contact_consent, :monthly_newsletter, :questions)
    end
end
