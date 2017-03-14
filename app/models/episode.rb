class Episode < ActiveRecord::Base

  has_many :appearances
  has_many :guests, through: :appearances


end
