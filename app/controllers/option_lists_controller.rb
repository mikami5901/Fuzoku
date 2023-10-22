class OptionListsController < ApplicationController
  before_action :authenticate_kanrisya!, only: [:new, :edit, :destroy]
  before_action :set_option_list, only: %i[ show edit update destroy ]

  # GET /option_lists or /option_lists.json
  def index
    @option_lists = OptionList.all
  end

  # GET /option_lists/1 or /option_lists/1.json
  def show
  end

  # GET /option_lists/new
  def new
    @option_list = OptionList.new
  end

  # GET /option_lists/1/edit
  def edit
  end

  # POST /option_lists or /option_lists.json
  def create
    @option_list = OptionList.new(option_list_params)

    respond_to do |format|
      if @option_list.save
        format.html { redirect_to option_list_url(@option_list), notice: "Option list was successfully created." }
        format.json { render :show, status: :created, location: @option_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @option_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_lists/1 or /option_lists/1.json
  def update
    respond_to do |format|
      if @option_list.update(option_list_params)
        format.html { redirect_to option_list_url(@option_list), notice: "Option list was successfully updated." }
        format.json { render :show, status: :ok, location: @option_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @option_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_lists/1 or /option_lists/1.json
  def destroy
    @option_list.destroy

    respond_to do |format|
      format.html { redirect_to option_lists_url, notice: "Option list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_list
      @option_list = OptionList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_list_params
      params.require(:option_list).permit(:option_name, :option_picture, :option_price)
    end
end
