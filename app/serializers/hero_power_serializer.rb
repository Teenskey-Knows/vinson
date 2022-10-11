class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id, :power_id, :hero_id

  belongs_to :power
end
