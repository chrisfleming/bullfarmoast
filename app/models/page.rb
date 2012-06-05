class Page < ActiveRecord::Base
  has_many :attractions

  scope :lightbox, where(:lightbox => true)
  scope :published, where(:published => true)
  scope :not_attraction, where( "parent != 'attractions' or parent is NULL" )
  
end
