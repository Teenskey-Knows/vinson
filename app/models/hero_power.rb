class HeroPower < ApplicationRecord
  validates :strength, inclusion: {in: %w(Strong Weak Average),
    message: "%{strength} is not a valid attribute"}
    validates :Hero_id, presence: true
    validates :Power_id, presence: true





  belongs_to :power
  belongs_to :hero
end
