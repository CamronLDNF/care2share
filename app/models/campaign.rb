class Campaign < ApplicationRecord
    belongs_to :user

    validates_presence_of :title, :description, :amount_raised
end
