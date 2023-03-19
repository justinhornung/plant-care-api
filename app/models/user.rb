class User < ApplicationRecord
  has_many :schedules
  has_many :plants, through: :schedules

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
