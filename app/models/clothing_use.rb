class ClothingUse < ApplicationRecord
  belongs_to :broadcast
  belongs_to :garment
  belongs_to :host
  has_many :brands, :through => :garments
  has_many :garment_types, :through => :garments
end
