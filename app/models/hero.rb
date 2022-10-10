class Hero < ApplicationRecord
    validates :name, presence: true
    validates :super_name, presence: true





    has_many :heroPowers, dependent: :destroy
    has_many :powers, through: :heroPowers
end
