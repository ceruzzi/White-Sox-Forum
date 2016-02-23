class DonationsController < ApplicationController
  before_action :authorize, only: [:show]

  def new
  @client_token = Braintree::ClientToken.generate
  end

def create
nonce = params[:payment_method_nonce]
  render action: :new and return unless nonce
  result = Braintree::Transaction.sale(
    amount: params["amount"],
    payment_method_nonce: nonce

  )

  flash[:notice] = "Donation Successful!" if result.success?
  flash[:notice] = "Donation Unsuccessful. Transaction canceled." unless result.success?
  redirect_to action: :new
end
  
end


