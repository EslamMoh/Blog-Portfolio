class Portfolio < ApplicationRecord

  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
  scope :angular_portfolio_items, -> { where(subtitle: 'Angular') }
end
