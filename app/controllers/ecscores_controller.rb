class EcscoresController < ApplicationController
  before_action :set_ecscore, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /ecscores
  # GET /ecscores.json
  def index
    @ecscores = Ecscore.where user: current_user
    if @ecscores.blank?
    calculate
    end
  end

  # GET /ecscores/1
  # GET /ecscores/1.json
  def show
  end

  # GET /ecscores/new
  def new
    @ecscore = Ecscore.new
  end

  # GET /ecscores/1/edit
  def edit
  end

  # POST /ecscores
  # POST /ecscores.json
  def create
    @ecscore = Ecscore.new(ecscore_params)

    respond_to do |format|
      if @ecscore.save
        format.html { redirect_to @ecscore, notice: 'Ecscore was successfully created.' }
        format.json { render :show, status: :created, location: @ecscore }
      else
        format.html { render :new }
        format.json { render json: @ecscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ecscores/1
  # PATCH/PUT /ecscores/1.json
  def update
    respond_to do |format|
      if @ecscore.update(ecscore_params)
        format.html { redirect_to @ecscore, notice: 'Ecscore was successfully updated.' }
        format.json { render :show, status: :ok, location: @ecscore }
      else
        format.html { render :edit }
        format.json { render json: @ecscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ecscores/1
  # DELETE /ecscores/1.json
  def destroy
    @ecscore.destroy
    respond_to do |format|
      format.html { redirect_to ecscores_url, notice: 'Ecscore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecscore
      @ecscore = Ecscore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ecscore_params
      params.require(:ecscore).permit(:user_id, :awareness, :control, :diagnosis, :response, :total)
    end
    
    def calculate
  #this method will be used to calculate the result
  
  @awareness = 0
  @control = 0
  @diagnosis = 0
  @response = 0
  @total = 0
  
  #get the ectest for the current user
  @ectest = Ecassessment.find_by user: current_user
  
  #if ectest. ans 1 = 1m awareness = 10 elseif ectest. ans1 = 2 then awareness += = else awareness += 0
  
  #calculating score for awareness
  
  if @ectest.ans1 == 1
  @awareness += 10
  end
  
  if @ectest.ans5 == 1
  @awareness += 5
  elsif @ectest.ans5 == 2
  @awareness += 10
  end
  
  if @ectest.ans9 == 3
  @awareness += 10
  end
  
  #calculating score for control
  
  if @ectest.ans2 == 2
  @control += 5
  elsif @ectest.ans2 == 3
  @control += 10
  end
  
  if @ectest.ans6 == 1
  @control += 10
  elsif @ectest.ans6 == 2
  @control += 5
  end
  
  if @ectest.ans10 == 3
  @control += 10
  end
  
  #calculating score for diagnosis
  
  if @ectest.ans3 == 1
  @diagnosis += 5
  elsif @ectest.ans3 == 2
  @diagnosis += 10
  end
  
  if @ectest.ans7 == 1
  @diagnosis += 10
  elsif @ectest.ans7 == 2
  @diagnosis += 5
  end
  
  if @ectest.ans11 == 2
  @diagnosis += 10
  end
  
  #calculating score for response
  
  if @ectest.ans4 == 2
  @response += 10
  end
  
   if @ectest.ans8 == 2
  @response += 5
  elsif @ectest.ans8 == 3
  @response += 10
  end
   
    if @ectest.ans12 == 1
  @response += 10
  elsif @ectest.ans12 == 2
  @response += 5
  end
  
  #calculate total score by adding all the scores
  @total = @awareness + @control + @diagnosis + @response
  
 # puts @total, @awareness, @control, @diagnosis, @response
  
  #store the score in the db through a ecscore object
  @ecscore = Ecscore.new(user: current_user, awareness: @awareness, control: @control, diagnosis: @diagnosis, response: @response, total: @total)
  
  
  @ecscore.save

   redirect_to ecscores_url   
  end 
end
