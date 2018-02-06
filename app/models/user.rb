class User < ApplicationRecord
    has_secure_password
    has_many :user_charities
    validates :email, presence: true
    has_many :charities, through: :user_charities
    has_many :donations, through: :user_charities



end
