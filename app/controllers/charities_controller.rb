class CharitiesController < ApplicationController
  before_action :set_charity, only: [:show, :edit, :update, :destroy]
  # before_action :authorize, except: [:new, :create]

  # GET /charities
  # GET /charities.json
  def index
    @charities = Charity.all
  end

  # GET /charities/1
  # GET /charities/1.json
  def show

    # account = Stripe::Account.retrieve("id")
    # account.save
  end

  # GET /charities/new
  def new
    @charity = Charity.new
  end

  # GET /charities/1/edit
  def edit
  end

  # POST /charities
  # POST /charities.json
  def create

    if @charity.save
      session[:charity_id] = @charity.id
      redirect_to @charity
    else
      redirect_to '/charities/signup'
    end
  end

  # PATCH/PUT /charities/1
  # PATCH/PUT /charities/1.json
  def update
    respond_to do |format|
      if @charity.update(charity_params)
        format.html { redirect_to @charity, notice: 'Charity was successfully updated.' }
        format.json { render :show, status: :ok, location: @charity }
      else
        format.html { render :edit }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charities/1
  # DELETE /charities/1.json
  def destroy
    @charity.destroy
    respond_to do |format|
      format.html { redirect_to charities_url, notice: 'Charity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity
      @charity = Charity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charity_params
      params.require(:charity).permit(:name, :password, :email, :charity_id)
    end
end
