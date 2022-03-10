class Food < ApplicationRecord
  has_many :Food_types , dependent: :destroy

end
