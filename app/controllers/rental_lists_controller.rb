class RentalListsController < ApplicationController
  before_action :set_rental_list, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /rental_lists
  # GET /rental_lists.json
  def index
    @rental_lists = current_user.rental_lists.all
  end

  # GET /rental_lists/1
  # GET /rental_lists/1.json
  def show
  end

  # GET /rental_lists/new
  def new
    @rental_list = current_user.rental_lists.new
  end

  # GET /rental_lists/1/edit
  def edit
  end

  # POST /rental_lists
  # POST /rental_lists.json
  def create
    @rental_list = current_user.rental_lists.new(rental_list_params)

    respond_to do |format|
      if @rental_list.save
        format.html { redirect_to rental_lists_path, notice: 'Rental list was successfully created.' }
        format.json { render :show, status: :created, location: @rental_list }
      else
        format.html { render :new }
        format.json { render json: @rental_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rental_lists/1
  # PATCH/PUT /rental_lists/1.json
  def update
    respond_to do |format|
      if @rental_list.update(rental_list_params)
        format.html { redirect_to rental_lists_path, notice: 'Rental list was successfully updated.' }
        format.json { render :show, status: :ok, location: @rental_list }
      else
        format.html { render :edit }
        format.json { render json: @rental_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_lists/1
  # DELETE /rental_lists/1.json
  def destroy
    @rental_list.destroy
    respond_to do |format|
      format.html { redirect_to rental_lists_url, notice: 'Rental list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_list
      @rental_list = RentalList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rental_list_params
      params.require(:rental_list).permit(:room_type, :person_capicty, :location, :propert_type, :property_type_cat, :is_dedicated, :guest_no_acc, :beedrooms_guest_use, :bathrooms_guest_no, :address, :city, :postal_code, :state, :country, :description, :title, rental_listing_bedrooms_attributes: [:id, :room_type, :_destroy], rental_listing_common_spaces_attributes: [:id, :space_type, :_destroy], rental_listing_images_attributes: [:id, :url, :_destroy], rental_listing_space_usages_attributes:[:kitchen, :laundry_washer, :laundry_dryer, :parking, :gym, :pool, :hot_tub, :elevator], rental_listing_amenity_info_attributes: [:essentails, :air_conditioning, :heat, :hair_drryer, :closet, :iron, :tv, :breakfast, :wifi], rental_listing_space_usage_attributes: [:kitchen, :laundry_washer, :laundry_dryer, :parking, :gym, :pool])
    end
end
