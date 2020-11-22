class EcassessmentsController < ApplicationController
  before_action :set_ecassessment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /ecassessments
  # GET /ecassessments.json
  def index
    @ecassessments = Ecassessment.all
  end

  # GET /ecassessments/1
  # GET /ecassessments/1.json
  def show
  end

  # GET /ecassessments/new
  def new
  @ecassessments = Ecassessment.where user: current_user
  if @ecassessments.blank?
      @ecassessment = Ecassessment.new(user: current_user)
  else
  redirect_to ecscores_url
  end
  end

  # GET /ecassessments/1/edit
  def edit
  end

  # POST /ecassessments
  # POST /ecassessments.json
  def create
    @ecassessment = Ecassessment.new(ecassessment_params)

    respond_to do |format|
      if @ecassessment.save
        format.html { redirect_to ecscores_url, notice: 'Ecassessment was successfully created.' }
        format.json { render :show, status: :created, location: @ecassessment }
      else
        format.html { render :new }
        format.json { render json: @ecassessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ecassessments/1
  # PATCH/PUT /ecassessments/1.json
  def update
    respond_to do |format|
      if @ecassessment.update(ecassessment_params)
        format.html { redirect_to @ecassessment, notice: 'Ecassessment was successfully updated.' }
        format.json { render :show, status: :ok, location: @ecassessment }
      else
        format.html { render :edit }
        format.json { render json: @ecassessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ecassessments/1
  # DELETE /ecassessments/1.json
  def destroy
    @ecassessment.destroy
    respond_to do |format|
      format.html { redirect_to ecassessments_url, notice: 'Ecassessment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecassessment
      @ecassessment = Ecassessment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ecassessment_params
      params.require(:ecassessment).permit(:user_id, :ans1, :ans2, :ans3, :ans4, :ans5, :ans6, :ans7, :ans8, :ans9, :ans10, :ans11, :ans12)
    end
end
