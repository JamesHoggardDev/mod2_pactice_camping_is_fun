class SignupsController < ApplicationController

    
  def index
    @signups = Signup.all
  end

  def new
    @signup = Signup.new
  end

  def edit
    @signup = Signup.find(params[:id])
  end

  def show
    @signup = Signup.find(params[:id])
  end

  def create
      @signup = Signup.create(signup_params)
      if @signup.valid?
        redirect_to camper_path(@signup.camper_id)
      else
        flash[:my_errors] = @signup.errors.full_messages
        redirect_to new_signup_path
      end
  end

  private

  def signup_params
      params.require(:signup).permit(:camper_id, :activity_id, :time)
  end

end
