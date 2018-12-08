class DonationsController < ApplicationController
  def new
    # @car = Automobile.find(params[:automobile_id])
  end

  def create
    # car = Automobile.find(params[:automobile_id])
    customer = Stripe::Customer.create(
      email: current_user.email,
      source: get_token(params),
      description: [current_user.firstname, current_user.lastname].join(' ')
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: 10000,
      currency: 'sek',
      description: 'Donation'
    )

    if charge[:paid]
      redirect_to campaigns_path, notice: 'Thank you for your donation!'
    else
      redirect_to campaigns_path, notice: 'Cheap ass!'
    end
  end

  private

  def get_token(params)
    Rails.env.test? ? generate_test_token : params['stripeToken']
  end

  def generate_test_token
    StripeMock.create_test_helper.generate_card_token
  end

end
