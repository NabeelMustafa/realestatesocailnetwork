class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!

  # GET /profiles
  # GET /profiles.json
  def index
    @profile = current_user.profile.first
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @flag = true
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
    @flag = false
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to profiles_url, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        puts @profile.errors.inspect
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profiles_url, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def find_friends 
  end

  def friend_list
  end
  def add_friend
    id = params[:friend_id]
    @new_friend =  current_user.profile[0].friend_lists.new(friend_id: id)
    respond_to do |format|
      if @new_friend.save
        format.html { redirect_to profile_path(id: id), notice: 'Profile was successfully updated.' }
      else
        format.json { render json: @profile.errors, status: :unprocessable_entity }        
      end
    end
    
  end

  def remove_friend
    id = params[:friend_id]
    @friend = FriendList.where(friend_id: id)
    @friend.destroy_all
    respond_to do |format|
      format.html { redirect_to profile_path(id: id), notice: 'Remove from the list.' }
      format.json { head :no_content }
    end
  end
  
  def messages
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:user_id, :first_name, :last_name, :iamge_url, :facebook_add, :linkedin_add, :about_me, :twitter_add, :ph_no)
    end
end


