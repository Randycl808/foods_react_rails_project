class Food < ApplicationRecord
  has_many :food_types , dependent: :destroy

end
