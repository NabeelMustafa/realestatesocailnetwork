class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index, :new, :edit, :switch_role, :mark_as_favorite]
  before_action :authenticate_user!

  # GET /services
  # GET /services.json
  def index
    @user = current_user
    @services = current_user.services
  end

  # GET /services/1
  # GET /services/1.json
  def show
  end

  # GET /services/new
  def new
    @user = current_user
    if current_user.profile.present?
      @service = @user.services.build
      @service.packages.build
      @service.requirements.build
      @service.faqs.build
    else
      redirect_to new_profile_url
    end
  end

  # GET /services/1/edit
  def edit
    @user = current_user
  end

  # POST /services
  # POST /services.json
  def create
    @user = current_user
    @service = current_user.services.new(service_params)
    @service.tags = service_params['tags'].split

    respond_to do |format|
      if @service.save
        # format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.html { redirect_to user_services_path(current_user), notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    @user = current_user
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to user_services_path(current_user), notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to user_services_path(current_user), notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def switch_role
    if @user.has_role?(:seller)
      @user.remove_role(:seller)
      @user.add_role(:buyer)
      redirect_to '/services'
      puts "switched the role to Buyer"
    else
      @user.remove_role(:buyer)
      @user.add_role(:seller)
      redirect_to user_services_path(current_user)
      puts "switched the role to Seller"
    end
  end

  def mark_as_favorite
    @services = Service.take(4)
    if @user.favorites.find_by(service_id: params[:id]).nil?
      @user.favorites.create(service_id: params[:id])
    else
      @user.favorites.find_by(service_id: params[:id]).delete
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = current_user.services.find(params[:id])
    end

    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      # params.fetch(:service, {})
      params.require(:service).permit(:title, :category, :price, :tags, :description,
                                      packages_attributes: [:name, :description, :delivery_time,
                                      :revisions, :price, :service],
                                      requirements_attributes: [:description, :requirement_type, :is_mandatory],
                                      faqs_attributes: [:question, :answer])
    end
end
