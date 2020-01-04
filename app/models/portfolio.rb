class Portfolio < ApplicationRecord

  validates_prsence_of :title, :body, :main_image, :thumb_image
end
