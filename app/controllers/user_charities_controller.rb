class UserCharitiesController < ApplicationController
  before_action :set_user_charity, only: [:show, :edit, :update, :destroy]

  # GET /user_charities
  # GET /user_charities.json
  def index
    @user_charities = UserCharity.all
  end

  # GET /user_charities/1
  # GET /user_charities/1.json
  def show
  end

  # GET /user_charities/new
  def new
    @user_charity = UserCharity.new
  end

  # GET /user_charities/1/edit
  def edit
  end

  # POST /user_charities
  # POST /user_charities.json
  def create
    @user_charity = UserCharity.new(user_charity_params)

    respond_to do |format|
      if @user_charity.save
        format.html { redirect_to @user_charity, notice: 'User charity was successfully created.' }
        format.json { render :show, status: :created, location: @user_charity }
      else
        format.html { render :new }
        format.json { render json: @user_charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_charities/1
  # PATCH/PUT /user_charities/1.json
  def update
    respond_to do |format|
      if @user_charity.update(user_charity_params)
        format.html { redirect_to @user_charity, notice: 'User charity was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_charity }
      else
        format.html { render :edit }
        format.json { render json: @user_charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_charities/1
  # DELETE /user_charities/1.json
  def destroy
    @user_charity.destroy
    respond_to do |format|
      format.html { redirect_to user_charities_url, notice: 'User charity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_charity
      @user_charity = UserCharity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_charity_params
      params.require(:user_charity).permit(:user_id, :charity_id, :status)
    end
end
