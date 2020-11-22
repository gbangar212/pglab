class MbtiscoresController < ApplicationController
  before_action :set_mbtiscore, only: [:show, :edit, :update, :destroy]
  before_action : authenticate_user!
  # GET /mbtiscores
  # GET /mbtiscores.json
  def index
    @mbtiscores = Mbtiscore.where user: current_user
    if @mbtiscores.blank?
    calculate
    end
  end

  # GET /mbtiscores/1
  # GET /mbtiscores/1.json
  def show
  end

  # GET /mbtiscores/new
  def new
    @mbtiscore = Mbtiscore.new
  end

  # GET /mbtiscores/1/edit
  def edit
  end

  # POST /mbtiscores
  # POST /mbtiscores.json
  def create
    @mbtiscore = Mbtiscore.new(mbtiscore_params)

    respond_to do |format|
      if @mbtiscore.save
        format.html { redirect_to @mbtiscore, notice: 'Mbtiscore was successfully created.' }
        format.json { render :show, status: :created, location: @mbtiscore }
      else
        format.html { render :new }
        format.json { render json: @mbtiscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mbtiscores/1
  # PATCH/PUT /mbtiscores/1.json
  def update
    respond_to do |format|
      if @mbtiscore.update(mbtiscore_params)
        format.html { redirect_to @mbtiscore, notice: 'Mbtiscore was successfully updated.' }
        format.json { render :show, status: :ok, location: @mbtiscore }
      else
        format.html { render :edit }
        format.json { render json: @mbtiscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbtiscores/1
  # DELETE /mbtiscores/1.json
  def destroy
    @mbtiscore.destroy
    respond_to do |format|
      format.html { redirect_to mbtiscores_url, notice: 'Mbtiscore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mbtiscore
      @mbtiscore = Mbtiscore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mbtiscore_params
      params.require(:mbtiscore).permit(:user_id, :ie, :ns, :tf, :pj)
    end
    
    def calculate
    @mbti = Mbti.find_by(user: current_user)
    @i = @mbti.ans1b + @mbti.ans5a + @mbti.ans9a + @mbti.ans13a + @mbti.ans17a + @mbti.ans21b + @mbti.ans25b + @mbti.ans29b  
    @e = @mbti.ans1a + @mbti.ans5b + @mbti.ans9b + @mbti.ans13b + @mbti.ans17b + @mbti.ans21a + @mbti.ans25a + @mbti.ans29a  
    @n = @mbti.ans2a + @mbti.ans6b + @mbti.ans10a + @mbti.ans14a + @mbti.ans18a + @mbti.ans22a + @mbti.ans26b + @mbti.ans30a  
    @s = @mbti.ans2b + @mbti.ans6a + @mbti.ans10b + @mbti.ans14b + @mbti.ans18b + @mbti.ans22b + @mbti.ans26a + @mbti.ans30b  
    @t = @mbti.ans3a + @mbti.ans7a + @mbti.ans11a + @mbti.ans15b + @mbti.ans19b + @mbti.ans23b + @mbti.ans27a + @mbti.ans31b  
    @f = @mbti.ans3b + @mbti.ans7b + @mbti.ans11b + @mbti.ans15a + @mbti.ans19a + @mbti.ans23a + @mbti.ans27b + @mbti.ans31a  
    @p = @mbti.ans4a + @mbti.ans8a + @mbti.ans12q + @mbti.ans16a + @mbti.ans20b + @mbti.ans24b + @mbti.ans28a + @mbti.ans32b  
    @j = @mbti.ans4b + @mbti.ans8b + @mbti.ans12b + @mbti.ans16b + @mbti.ans20a + @mbti.ans24a + @mbti.ans28b + @mbti.ans32a  
    end
end
