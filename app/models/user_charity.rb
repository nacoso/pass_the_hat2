class UserCharity < ApplicationRecord
  has_many :donations
  belongs_to :user
  belongs_to :charity
  
end
