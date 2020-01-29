class ListFurnituresController < ApplicationController
  before_action :set_list_furniture, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /list_furnitures
  # GET /list_furnitures.json
  def index
    @list_furnitures = current_user.list_furnitures.all
  end

  # GET /list_furnitures/1
  # GET /list_furnitures/1.json
  def show
  end

  # GET /list_furnitures/new
  def new
    @list_furniture = current_user.list_furnitures.new
  end

  # GET /list_furnitures/1/edit
  def edit
  end

  # POST /list_furnitures
  # POST /list_furnitures.json
  def create
    @list_furniture = current_user.list_furnitures.new(list_furniture_params)

    respond_to do |format|
      if @list_furniture.save
        format.html { redirect_to list_furnitures_url, notice: 'List furniture was successfully created.' }
        format.json { render :show, status: :created, location: @list_furniture }
      else
        format.html { render :new }
        format.json { render json: @list_furniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_furnitures/1
  # PATCH/PUT /list_furnitures/1.json
  def update
    respond_to do |format|
      if @list_furniture.update(list_furniture_params)
        format.html { redirect_to list_furnitures_url, notice: 'List furniture was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_furniture }
      else
        format.html { render :edit }
        format.json { render json: @list_furniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_furnitures/1
  # DELETE /list_furnitures/1.json
  def destroy
    @list_furniture.destroy
    respond_to do |format|
      format.html { redirect_to list_furnitures_url, notice: 'List furniture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_furniture
      @list_furniture = ListFurniture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_furniture_params
      params.require(:list_furniture).permit(:title, :price, :url, :f_type, :size, :material, :total_no)
    end
end
