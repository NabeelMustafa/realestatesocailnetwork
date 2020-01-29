class ListArtsController < ApplicationController
  before_action :set_list_art, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /list_arts
  # GET /list_arts.json
  def index
    @list_arts = current_user.list_arts.all
  end

  # GET /list_arts/1
  # GET /list_arts/1.json
  def show
  end

  # GET /list_arts/new
  def new
    @list_art = current_user.list_arts.new
  end

  # GET /list_arts/1/edit
  def edit
  end

  # POST /list_arts
  # POST /list_arts.json
  def create
    @list_art = current_user.list_arts.new(list_art_params)

    respond_to do |format|
      if @list_art.save
        format.html { redirect_to list_arts_url, notice: 'List art was successfully created.' }
        format.json { render :show, status: :created, location: @list_art }
      else
        format.html { render :new }
        format.json { render json: @list_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_arts/1
  # PATCH/PUT /list_arts/1.json
  def update
    respond_to do |format|
      if @list_art.update(list_art_params)
        format.html { redirect_to list_arts_url, notice: 'List art was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_art }
      else
        format.html { render :edit }
        format.json { render json: @list_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_arts/1
  # DELETE /list_arts/1.json
  def destroy
    @list_art.destroy
    respond_to do |format|
      format.html { redirect_to list_arts_url, notice: 'List art was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_art
      @list_art = ListArt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_art_params
      params.require(:list_art).permit(:art_name, :art_type, :price, :description, :size, :url)
    end
end
