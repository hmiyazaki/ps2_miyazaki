class Prototype < ActiveRecord::Base
  has_many :prototype_images
  has_many :tags
  
  accepts_nested_attributes_for :prototype_images
  accepts_nested_attributes_for :tags
end
