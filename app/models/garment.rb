class Garment < ApplicationRecord
  belongs_to :brand
  belongs_to :garment_type
  paginates_per 10
end
