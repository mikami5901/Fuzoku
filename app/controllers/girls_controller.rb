class GirlsController < ApplicationController
  before_action :authenticate_kanrisya!, only: [:new, :edit, :destroy]
  before_action :set_girl, only: %i[ show edit update destroy ]

  # GET /girls or /girls.json
  def index
    @girls = Girl.page(params[:page]).per(20)
    
  end

  def janitor
    @girls = Girl.page(params[:page]).per(20)
    
  end

  # GET /girls/1 or /girls/1.json
  def show
    @girls = Girl.page(params[:page]).per(20)
    @gi = Girl.find(params[:id])
  end

  # GET /girls/new
  def new
    @girl = Girl.new
  end

  # GET /girls/1/edit
  def edit
  end

  # POST /girls or /girls.json
  def create
    @girl = Girl.new(girl_params)

    respond_to do |format|
      if @girl.save
        format.html { redirect_to girl_url(@girl), notice: "Girl was successfully created." }
        format.json { render :show, status: :created, location: @girl }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @girl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /girls/1 or /girls/1.json
  def update
    respond_to do |format|
      if @girl.update(girl_params)
        format.html { redirect_to girl_url(@girl), notice: "Girl was successfully updated." }
        format.json { render :show, status: :ok, location: @girl }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @girl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /girls/1 or /girls/1.json
  def destroy
    @girl.destroy

    respond_to do |format|
      format.html { redirect_to girls_url, notice: "Girl was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_girl
      @girl = Girl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def girl_params
      params.require(:girl).permit(:name, :age, :height, :bust, :bust_cup, :waist, :hip, :girl_picture, :message, :tag_a, :tag_b, :tag_c, :tag_d, :nomination_fee, :start_date, :experience, :option_id)
    end
end
