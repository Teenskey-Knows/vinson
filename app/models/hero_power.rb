class HeroPower < ApplicationRecord
  validates :strength, inclusion: {in: %w(Strong Weak Average),
    message: "%{value} is not a valid attribute"}
    validates :hero_id, presence: true
    validates :power_id, presence: true





  belongs_to :power
  belongs_to :hero
end
