class Plant < ApplicationRecord
  has_many :schedules
  has_many :users, through: :schedules
end
