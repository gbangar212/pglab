class JoharisController < ApplicationController
  before_action :set_johari, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /joharis
  # GET /joharis.json
  def index
    @joharis = Johari.all
  end

  # GET /joharis/1
  # GET /joharis/1.json
  def show
  end

  # GET /joharis/new
  def new
  
  	@joharis = Johari.where user: current_user
  if @joharis.blank?
      @johari = Johari.new(user: current_user)
  else
  redirect_to johariscores_url
  end
   
  end

  # GET /joharis/1/edit
  def edit
  end

  # POST /joharis
  # POST /joharis.json
  def create
    @johari = Johari.new(johari_params)

    respond_to do |format|
      if @johari.save
        format.html { redirect_to johariscores_url, notice: 'Johari was successfully created.' }
        format.json { render :show, status: :created, location: @johari }
      else
        format.html { render :new }
        format.json { render json: @johari.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joharis/1
  # PATCH/PUT /joharis/1.json
  def update
    respond_to do |format|
      if @johari.update(johari_params)
        format.html { redirect_to @johari, notice: 'Johari was successfully updated.' }
        format.json { render :show, status: :ok, location: @johari }
      else
        format.html { render :edit }
        format.json { render json: @johari.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joharis/1
  # DELETE /joharis/1.json
  def destroy
    @johari.destroy
    respond_to do |format|
      format.html { redirect_to joharis_url, notice: 'Johari was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_johari
      @johari = Johari.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def johari_params
      params.require(:johari).permit(:user_id, :ans1a, :ans1b, :ans2a, :ans2b, :ans3a, :ans3b, :ans4a, :ans4b, :ans5a, :ans5b, :ans6a, :ans6b, :ans7a, :ans7b, :ans8a, :ans8b, :ans9a, :ans9b, :ans10a, :ans10b, :ans11a, :ans11b, :ans12a, :ans12b, :ans13a, :ans13b, :ans14a, :ans14b, :ans15a, :ans15b, :ans16a, :ans16b, :ans17a, :ans17b, :ans18a, :ans18b, :ans19a, :ans19b, :ans20a, :ans20b)
    end
end
