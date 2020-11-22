class MbtinewscoresController < ApplicationController
  before_action :set_mbtinewscore, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /mbtinewscores
  # GET /mbtinewscores.json
  def index
    @mbtinewscores = Mbtinewscore.where  user: current_user
    if @mbtinewscores.blank?
    	calculate
    end
  end

  # GET /mbtinewscores/1
  # GET /mbtinewscores/1.json
  def show
  end

  # GET /mbtinewscores/new
  def new
    @mbtinewscore = Mbtinewscore.new
  end

  # GET /mbtinewscores/1/edit
  def edit
  end

  # POST /mbtinewscores
  # POST /mbtinewscores.json
  def create
    @mbtinewscore = Mbtinewscore.new(mbtinewscore_params)

    respond_to do |format|
      if @mbtinewscore.save
        format.html { redirect_to @mbtinewscore, notice: 'Mbtinewscore was successfully created.' }
        format.json { render :show, status: :created, location: @mbtinewscore }
      else
        format.html { render :new }
        format.json { render json: @mbtinewscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mbtinewscores/1
  # PATCH/PUT /mbtinewscores/1.json
  def update
    respond_to do |format|
      if @mbtinewscore.update(mbtinewscore_params)
        format.html { redirect_to @mbtinewscore, notice: 'Mbtinewscore was successfully updated.' }
        format.json { render :show, status: :ok, location: @mbtinewscore }
      else
        format.html { render :edit }
        format.json { render json: @mbtinewscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbtinewscores/1
  # DELETE /mbtinewscores/1.json
  def destroy
    @mbtinewscore.destroy
    respond_to do |format|
      format.html { redirect_to mbtinewscores_url, notice: 'Mbtinewscore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mbtinewscore
      @mbtinewscore = Mbtinewscore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mbtinewscore_params
      params.require(:mbtinewscore).permit(:user_id, :scorei, :scoree, :scoren, :scores, :scoret, :scoref, :scorep, :scorej)
    end
    
    def calculate
    @mbti = Mbti.find_by(user: current_user)
    @i = @mbti.ans1b + @mbti.ans5a + @mbti.ans9a + @mbti.ans13a + @mbti.ans17a + @mbti.ans21b + @mbti.ans25b + @mbti.ans29b  
    @e = @mbti.ans1a + @mbti.ans5b + @mbti.ans9b + @mbti.ans13b + @mbti.ans17b + @mbti.ans21a + @mbti.ans25a + @mbti.ans29a  
    @n = @mbti.ans2a + @mbti.ans6b + @mbti.ans10a + @mbti.ans14a + @mbti.ans18a + @mbti.ans22a + @mbti.ans26b + @mbti.ans30a  
    @s = @mbti.ans2b + @mbti.ans6a + @mbti.ans10b + @mbti.ans14b + @mbti.ans18b + @mbti.ans22b + @mbti.ans26a + @mbti.ans30b  
    @t = @mbti.ans3a + @mbti.ans7a + @mbti.ans11a + @mbti.ans15b + @mbti.ans19b + @mbti.ans23b + @mbti.ans27a + @mbti.ans31b  
    @f = @mbti.ans3b + @mbti.ans7b + @mbti.ans11b + @mbti.ans15a + @mbti.ans19a + @mbti.ans23a + @mbti.ans27b + @mbti.ans31a  
    @p = @mbti.ans4a + @mbti.ans8a + @mbti.ans12a + @mbti.ans16a + @mbti.ans20b + @mbti.ans24b + @mbti.ans28a + @mbti.ans32b  
    @j = @mbti.ans4b + @mbti.ans8b + @mbti.ans12b + @mbti.ans16b + @mbti.ans20a + @mbti.ans24a + @mbti.ans28b + @mbti.ans32a  
    @mbtinewscore = Mbtinewscore.new(user: current_user, scorei: @i,  scoree: @e , scoren: @n , scores: @s,  scoret: @t,  scoref: @f, scorep: @p, scorej: @j)
    @mbtinewscore.save
    redirect_to mbtinewscores_url
    
    end

end
