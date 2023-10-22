class YoyakusController < ApplicationController
  before_action :set_yoyaku, only: %i[ show edit update destroy ]

  # GET /yoyakus or /yoyakus.json
  def index
    @yoyakus = Yoyaku.all
    @girls = Girl.all
  end

  # GET /yoyakus/1 or /yoyakus/1.json
  def show
  end

  # GET /yoyakus/new
  def new
    @yoyaku = Yoyaku.new
    @girls = Girl.all
  end

  # GET /yoyakus/1/edit
  def edit
    @girls = Girl.all
  end

  # POST /yoyakus or /yoyakus.json
  def create
    @yoyaku = Yoyaku.new(yoyaku_params)
   
    respond_to do |format|
      if @yoyaku.save
        format.html { redirect_to yoyaku_url(@yoyaku), notice: "Yoyaku was successfully created." }
        format.json { render :show, status: :created, location: @yoyaku }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @yoyaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yoyakus/1 or /yoyakus/1.json
  def update
    respond_to do |format|
      if @yoyaku.update(yoyaku_params)
        format.html { redirect_to yoyaku_url(@yoyaku), notice: "Yoyaku was successfully updated." }
        format.json { render :show, status: :ok, location: @yoyaku }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @yoyaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yoyakus/1 or /yoyakus/1.json
  def destroy
    @yoyaku.destroy

    respond_to do |format|
      format.html { redirect_to yoyakus_url, notice: "Yoyaku was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yoyaku
      @yoyaku = Yoyaku.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def yoyaku_params
      params.require(:yoyaku).permit(:girl_id, :reserve_start, :reserve_finish)
    end
end
