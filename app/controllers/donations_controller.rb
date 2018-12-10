class DonationsController < ApplicationController
  def new
    @campaign_id = params[:campaign_id]
  end

  def create
    customer = Stripe::Customer.create(
      email: params[:email],
      source: get_token(params),
      description: [params[:firstname], params[:lastname]].join(' ')
    )

    charge = Stripe::Charge.create(
      customer: customer.id, 
      amount: params[:amount].to_i * 100,
      currency: 'sek',
      description: 'Donation to Care2Share'
    )

    if charge[:paid]
      @campaign = Campaign.find(params[:campaign_id])
      @campaign.update_attribute(:amount_raised, @campaign.amount_raised += ((charge.amount)/100))
      @campaign.save
      redirect_to campaign_path(@campaign), notice: 'Thank you for your donation!'
    else
      redirect_to campaign_path(@campaign), notice: 'Cheap ass!'
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
