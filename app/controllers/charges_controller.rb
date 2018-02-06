class ChargesController < ApplicationController

def new
end

def create
# Amount in cents
# @amount = 500

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )
  plan = Stripe::Plan.retrieve("#{params[:plan]}")


  subscription = Stripe::Subscription.create({
     customer: customer.id,
     plan: plan
  })


  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


  # user = User.find(params[:user_id])
  # redirect_to user
end
