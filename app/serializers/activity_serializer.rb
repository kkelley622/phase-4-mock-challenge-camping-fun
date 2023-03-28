class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :difficulty, :name 
  # has_many :signups
  # has_many :campers 
end
