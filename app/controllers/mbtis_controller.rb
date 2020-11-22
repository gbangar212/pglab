class MbtisController < ApplicationController
  before_action :set_mbti, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /mbtis
  # GET /mbtis.json
  def index
    @mbtis = Mbti.all
  end

  # GET /mbtis/1
  # GET /mbtis/1.json
  def show
  end

  # GET /mbtis/new
  def new
  	@mbtis = Mbti.where user: current_user
  if @mbtis.blank?
      @mbti = Mbti.new(user: current_user)
  else
  redirect_to mbtinewscores_url
  end
    
  end

  # GET /mbtis/1/edit
  def edit
  end

  # POST /mbtis
  # POST /mbtis.json
  def create
    @mbti = Mbti.new(mbti_params)

    respond_to do |format|
      if @mbti.save
        format.html { redirect_to mbtinewscores_url, notice: 'Mbti was successfully created.' }
        format.json { render :show, status: :created, location: @mbti }
      else
        format.html { render :new }
        format.json { render json: @mbti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mbtis/1
  # PATCH/PUT /mbtis/1.json
  def update
    respond_to do |format|
      if @mbti.update(mbti_params)
        format.html { redirect_to @mbti, notice: 'Mbti was successfully updated.' }
        format.json { render :show, status: :ok, location: @mbti }
      else
        format.html { render :edit }
        format.json { render json: @mbti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbtis/1
  # DELETE /mbtis/1.json
  def destroy
    @mbti.destroy
    respond_to do |format|
      format.html { redirect_to mbtis_url, notice: 'Mbti was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mbti
      @mbti = Mbti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mbti_params
      params.require(:mbti).permit(:user_id, :ans1a, :ans1b, :ans2a, :ans2b, :ans3a, :ans3b, :ans4a, :ans4b, :ans5a, :ans5b, :ans6a, :ans6b, :ans7a, :ans7b, :ans8a, :ans8b, :ans9a, :ans9b, :ans10a, :ans10b, :ans11a, :ans11b, :ans12a, :ans12b, :ans13a, :ans13b, :ans14a, :ans14b, :ans15a, :ans15b, :ans16a, :ans16b, :ans17a, :ans17b, :ans18a, :ans18b, :ans19a, :ans19b, :ans20a, :ans20b, :ans21a, :ans21b, :ans22a, :ans22b, :ans23a, :ans23b, :ans24a, :ans24b, :ans25a, :ans25b, :ans26a, :ans26b, :ans27a, :ans27b, :ans28a, :ans28b, :ans29a, :ans29b, :ans30a, :ans30b, :ans31a, :ans31b, :ans32a, :ans32b)
    end
end
