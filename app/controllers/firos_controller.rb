class FirosController < ApplicationController
  before_action :set_firo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /firos
  # GET /firos.json
  def index
    @firos = Firo.all
  end

  # GET /firos/1
  # GET /firos/1.json
  def show
  end

  # GET /firos/new
  def new
  
  @firos = Firo.where user: current_user
  if @firos.blank?
      @firo = Firo.new(user: current_user)
  else
  redirect_to firoscores_url
  end
    
    
  end

  # GET /firos/1/edit
  def edit
  end

  # POST /firos
  # POST /firos.json
  def create
    @firo = Firo.new(firo_params)

    respond_to do |format|
      if @firo.save
        format.html { redirect_to firoscores_url, notice: 'Firo was successfully created.' }
        format.json { render :show, status: :created, location: @firo }
      else
        format.html { render :new }
        format.json { render json: @firo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firos/1
  # PATCH/PUT /firos/1.json
  def update
    respond_to do |format|
      if @firo.update(firo_params)
        format.html { redirect_to @firo, notice: 'Firo was successfully updated.' }
        format.json { render :show, status: :ok, location: @firo }
      else
        format.html { render :edit }
        format.json { render json: @firo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firos/1
  # DELETE /firos/1.json
  def destroy
    @firo.destroy
    respond_to do |format|
      format.html { redirect_to firos_url, notice: 'Firo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firo
      @firo = Firo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def firo_params
      params.require(:firo).permit(:user_id, :ans1, :ans2, :ans3, :ans4, :ans5, :ans6, :ans7, :ans8, :ans9, :ans10, :ans11, :ans12, :ans13, :ans14, :ans15, :ans16, :ans17, :ans18, :ans19, :ans20, :ans21, :ans22, :ans23, :ans24, :ans25, :ans26, :ans27, :ans28, :ans29, :ans30, :ans31, :ans32, :ans33, :ans34, :ans35, :ans36, :ans37, :ans38, :ans39, :ans40, :ans41, :ans42, :ans43, :ans44, :ans45, :ans46, :ans47, :ans48, :ans49, :ans50, :ans51, :ans52, :ans53, :ans54)
    end
end
