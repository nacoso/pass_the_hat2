require "stripe"

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def current_charity
    @current_charity ||= Charity.find(session[:charity_id]) if session[:charity_id]
  end
  helper_method :current_charity

  def authorize
    redirect_to '/login' unless current_user || current_charity
  end



end
