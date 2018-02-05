class SessionController < ApplicationController
  def new
  end

  def destroy
    session[:user_id] = nil
    session[:charity_id] = nil
    redirect_to '/'
  end

  def create
    if params[:user_id]
      user_from_registration = User.find(params[:user_id])
    elsif params[:charity_id]
      user_from_registration = Charity.find(params[:charity_id])
    else
      user = User.find_by_email(params[:email]) || Charity.find_by_email(params[:email])
    end
    # If the user exists AND the password entered is correct.
    if user_from_registration || (user && user.authenticate(params[:password]))
      # Save the user id inside the browser cookie. This is how we keep the user logged in when they navigate around our website.
      user ||= user_from_registration
      session["#{user.class.to_s.downcase}_id".to_sym] = user.id
      redirect_to user

    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to login_path, notice: "Sorry! Could not log in. Make sure you are using the right username and password"
    end
  end
end
