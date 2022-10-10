class Power < ApplicationRecord
    validates :description, presence: true
    validates :description, length: {minimum:20}
    validates :name, presence: true


    has_many :heroPowers, dependent: :destroy
    has_many :heros, through: :heroPowers
end
