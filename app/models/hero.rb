class Hero < ApplicationRecord






    has_many :heroPowers, dependent: :destroy
    has_many :powers, through: :heroPowers
end
