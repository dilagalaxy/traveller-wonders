  class PaymentsController < ApplicationController

    # Set your secret key: remember to change this to your live secret key in production
  # See your keys here: https://dashboard.stripe.com/account/apikeys

  def create
    token = params[:stripeToken]
    @product = Product.find(params[:product_id])
    @user = current_user
    # Create the charge on Stripe's servers - this will charge the user's card
    begin

      charge = Stripe::Charge.create(
          :amount => (@product.price*100).to_i, # amount in cents, again
          :currency => "eur",
          :source => token,
          :description => @product.description,
          :receipt_email => params[:stripeEmail]
          )
      if charge.paid
        Order.create(product_id: @product.id, user_id: @user.id, total: @product.price)
        redirect_to product_path(@product), notice: 'Purchase was successfully completed.'
      end

    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end
    redirect_to product_path(@product)
  end
end