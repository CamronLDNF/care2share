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
      amount: 100_00,  # how do we change this to the actual amount paid?
      currency: 'sek',
      description: 'Donation'
    )

    if charge[:paid]
      # increase_amount_raised  ????
      redirect_to campaign_details, notice: 'Thank you for your donation!'
    else
      redirect_to campaign_details, notice: 'Cheap ass!'
    end

  end

  private

  def campaign_details
    campaign = Campaign.find_by(title: value)
    return campaign_path(campaign[:id])
  end

  def get_token(params)
    Rails.env.test? ? generate_test_token : params['stripeToken']
  end

  def generate_test_token
    StripeMock.create_test_helper.generate_card_token
  end

end
