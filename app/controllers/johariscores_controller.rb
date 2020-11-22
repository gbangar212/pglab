class JohariscoresController < ApplicationController
  before_action :set_johariscore, only: [:show, :edit, :update, :destroy]

  # GET /johariscores
  # GET /johariscores.json
  def index
  	@johariscores = Johariscore.where user: current_user
  	if @johari.blank?
  	   calculate
  	end
  end

  # GET /johariscores/1
  # GET /johariscores/1.json
  def show
  end

  # GET /johariscores/new
  def new
    @johariscore = Johariscore.new
  end

  # GET /johariscores/1/edit
  def edit
  end

  # POST /johariscores
  # POST /johariscores.json
  def create
    @johariscore = Johariscore.new(johariscore_params)

    respond_to do |format|
      if @johariscore.save
        format.html { redirect_to @johariscore, notice: 'Johariscore was successfully created.' }
        format.json { render :show, status: :created, location: @johariscore }
      else
        format.html { render :new }
        format.json { render json: @johariscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /johariscores/1
  # PATCH/PUT /johariscores/1.json
  def update
    respond_to do |format|
      if @johariscore.update(johariscore_params)
        format.html { redirect_to @johariscore, notice: 'Johariscore was successfully updated.' }
        format.json { render :show, status: :ok, location: @johariscore }
      else
        format.html { render :edit }
        format.json { render json: @johariscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /johariscores/1
  # DELETE /johariscores/1.json
  def destroy
    @johariscore.destroy
    respond_to do |format|
      format.html { redirect_to johariscores_url, notice: 'Johariscore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_johariscore
      @johariscore = Johariscore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def johariscore_params
      params.require(:johariscore).permit(:user_id, :askfeedback, :givefeedback)
    end
    
    #method to calculate scores of johari window assessment
        
    def calculate
    @askfeedback = 0
    @givefeedback = 0
    @johari = Johari.find_by user: current_user
    
    @askfeedback = @johari.ans2b + @johari.ans3a + @johari.ans5a + @johari.ans7a + @johari.ans8b + @johari.ans10b + @johari.ans12b + @johari.ans14b + @johari.ans16a + @johari.ans20a
    @givefeedback =  @johari.ans1a + @johari.ans4b + @johari.ans6b + @johari.ans9b + @johari.ans11b + @johari.ans13a + @johari.ans15a + @johari.ans17b + @johari.ans18b + @johari.ans19b
    
    @johariscore = Johariscore.new(user: current_user, askfeedback: @askfeedback, givefeedback: @givefeedback)
    @johariscore.save
    redirect_to @johariscore
    end
end
