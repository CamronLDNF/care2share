Given('the following user exists') do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given('the following campaign exists') do |table|
    table.hashes.each do |campaign|
        campaign_user = User.find_or_create_by(email: campaign[:user])
        campaign.except!('user')
        Campaign.create(campaign.merge(user: campaign_user))
    end
end


  