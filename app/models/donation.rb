class Donation < ApplicationRecord
  belongs_to :user_charity
  belongs_to :user
end
