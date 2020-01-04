class Skill < ApplicationRecord

  validates_prsence_of :title, :percent_utilized
end
