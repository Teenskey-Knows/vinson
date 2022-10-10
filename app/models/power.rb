class Power < ApplicationRecord



    has_many :heroPowers, dependent: :destroy
    has_many :heros, through: :heroPowers
end
