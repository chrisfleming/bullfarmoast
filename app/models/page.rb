class Page < ActiveRecord::Base
  has_many :attractions

  scope :lightbox, where(:lightbox => true)
end
