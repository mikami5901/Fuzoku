class RyokinsController < ApplicationController
  before_action :authenticate_kanrisya!, only: [:new, :edit, :destroy]
  before_action :set_ryokin, only: %i[ show edit update destroy ]

  # GET /ryokins or /ryokins.json
  def index
    @ryokins = Ryokin.all
  end

  # GET /ryokins/1 or /ryokins/1.json
  def show
  end

  # GET /ryokins/new
  def new
    @ryokin = Ryokin.new
  end

  # GET /ryokins/1/edit
  def edit
  end

  # POST /ryokins or /ryokins.json
  def create
    @ryokin = Ryokin.new(ryokin_params)

    respond_to do |format|
      if @ryokin.save
        format.html { redirect_to ryokin_url(@ryokin), notice: "Ryokin was successfully created." }
        format.json { render :show, status: :created, location: @ryokin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ryokin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ryokins/1 or /ryokins/1.json
  def update
    respond_to do |format|
      if @ryokin.update(ryokin_params)
        format.html { redirect_to ryokin_url(@ryokin), notice: "Ryokin was successfully updated." }
        format.json { render :show, status: :ok, location: @ryokin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ryokin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ryokins/1 or /ryokins/1.json
  def destroy
    @ryokin.destroy

    respond_to do |format|
      format.html { redirect_to ryokins_url, notice: "Ryokin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ryokin
      @ryokin = Ryokin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ryokin_params
      params.require(:ryokin).permit(:course, :punn)
    end
end
