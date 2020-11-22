class FiroscoresController < ApplicationController
  before_action :set_firoscore, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /firoscores
  # GET /firoscores.json
  def index
    @firoscores = Firoscore.where(user: current_user)
    if @firoscores.blank?
  	calculate
  	end
  end

  # GET /firoscores/1
  # GET /firoscores/1.json
  def show
  end

  # GET /firoscores/new
  def new
    @firoscore = Firoscore.new
  end

  # GET /firoscores/1/edit
  def edit
  end

  # POST /firoscores
  # POST /firoscores.json
  def create
    @firoscore = Firoscore.new(firoscore_params)

    respond_to do |format|
      if @firoscore.save
        format.html { redirect_to @firoscore, notice: 'Firoscore was successfully created.' }
        format.json { render :show, status: :created, location: @firoscore }
      else
        format.html { render :new }
        format.json { render json: @firoscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firoscores/1
  # PATCH/PUT /firoscores/1.json
  def update
    respond_to do |format|
      if @firoscore.update(firoscore_params)
        format.html { redirect_to @firoscore, notice: 'Firoscore was successfully updated.' }
        format.json { render :show, status: :ok, location: @firoscore }
      else
        format.html { render :edit }
        format.json { render json: @firoscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firoscores/1
  # DELETE /firoscores/1.json
  def destroy
    @firoscore.destroy
    respond_to do |format|
      format.html { redirect_to firoscores_url, notice: 'Firoscore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firoscore
      @firoscore = Firoscore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def firoscore_params
      params.require(:firoscore).permit(:user_id, :ei, :ec, :ea, :wi, :wc, :wa)
    end
    
    #calculate the firo scores from the assessment and save the data here
    def calculate
    @ei = 0
    @ec = 0
    @ea = 0
    @wi = 0
    @wc = 0
    @wa = 0
    
    @firo = Firo.find_by user: current_user
    
    #scoring for EI
    case @firo.ans1
    when 1,2,3
    @ei += 1
    end
    
    case @firo.ans3
    when 1,2,3,4
    @ei += 1
    end
    
    case @firo.ans5
    when 1,2,3,4
    @ei += 1
    end
    
    case @firo.ans7
    when 1,2,3
    @ei += 1
    end
    
    case @firo.ans9
    when 1,2
    @ei += 1
    end
    
    case @firo.ans11
    when 1,2
    @ei += 1
    end
    
    case @firo.ans13
    when 1,2
    @ei += 1
    end
    
    case @firo.ans15
    when 1
    @ei += 1
    end
    
    case @firo.ans16
    when 1
    @ei += 1
    end
    
    #Scoring for wc
    case @firo.ans2
    when 1,2,3,4
    @wc += 1
    end
    
    case @firo.ans6
    when 1,2,3,4
    @wc += 1
    end
    
    case @firo.ans10
    when 1,2,3
    @wc += 1
    end
    
    case @firo.ans14
    when 1,2,3,4
    @wc += 1
    end
    
    case @firo.ans18
    when 1,2,3,4
    @wc += 1
    end
    
    case @firo.ans20
    when 1,2,3,4
    @wc += 1
    end
    
    case @firo.ans22
    when 1,2,3,4
    @wc += 1
    end
    
    case @firo.ans24
    when 1,2,3
    @wc += 1
    end
    
    case @firo.ans26
    when 1,2,3,4
    @wc += 1
    end
    
    #scoring for EA
    
    case @firo.ans4
    when 1,2
    @ea += 1
    end
    
    case @firo.ans8
    when 1,2
    @ea += 1
    end
    
    case @firo.ans12
    when 1
    @ea += 1
    end
    
    case @firo.ans17
    when 1,2
    @ea += 1
    end
    
    case @firo.ans19
    when 4,5,6
    @ea += 1
    end
    
    case @firo.ans21
    when 1,2
    @ea += 1
    end
    
    case @firo.ans23
    when 1,2
    @ea += 1
    end
    
    case @firo.ans25
    when 4,5,6
    @ea += 1
    end
    
    case @firo.ans27
    when 1,2,3,4
    @ea += 1
    end
    
    #scoring for wi
    
    case @firo.ans28
    when 1,2
    @wi += 1
    end
    
    case @firo.ans31
    when 1,2
    @wi += 1
    end
    
    case @firo.ans34
    when 1,2
    @wi += 1
    end
    
    case @firo.ans37
    when 1
    @wi += 1
    end
    
    case @firo.ans39
    when 1
    @wi += 1
    end
    
    case @firo.ans42
    when 1,2
    @wi += 1
    end
    
    case @firo.ans45
    when 1,2
    @wi += 1
    end
    
    case @firo.ans48
    when 1,2
    @wi += 1
    end
    
    case @firo.ans51
    when 1,2
    @wi += 1
    end
    
    #scoring for WA
    
    case @firo.ans29
    when 1,2
    @wa += 1
    end
    
    case @firo.ans32
    when 1,2
    @wa += 1
    end
    
    case @firo.ans35
    when 5,6
    @wa += 1
    end
    
    case @firo.ans38
    when 1,2
    @wa += 1
    end
    
    case @firo.ans40
    when 5,6
    @wa += 1
    end
    
    case @firo.ans43
    when 1
    @wa += 1
    end
    
    case @firo.ans46
    when 5,6
    @wa += 1
    end
    
    case @firo.ans49
    when 1,2
    @wa += 1
    end
    
    case @firo.ans52
    when 5,6
    @wa += 1
    end
    
    #scoring for EC
    
    case @firo.ans30
    when 1,2,3
    @ec += 1
    end
    
    case @firo.ans33
    when 1,2,3
    @ec += 1
    end
    
    case @firo.ans36
    when 1,2
    @ec += 1
    end
    
    case @firo.ans41
    when 1,2,3,4
    @ec += 1
    end
    
    case @firo.ans44
    when 1,2,3
    @ec += 1
    end
    
    case @firo.ans47
    when 1,2,3
    @ec += 1
    end
    
    case @firo.ans50
    when 1,2
    @ec += 1
    end
    
    case @firo.ans53
    when 1,2
    @ec += 1
    end
    
    case @firo.ans54
    when 1,2
    @ec += 1
    end
    
    @firoscore = Firoscore.new(user: current_user, ei: @ei, ec: @ec, ea: @ea, wi: @wi, wc: @wc, wa: @wa)
    @firoscore.save
    redirect_to firoscores_url
    
    end
end
