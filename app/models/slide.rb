class Slide < ApplicationRecord

  belongs_to :gallery
  belongs_to :photo

  store_accessor :properties, :call_to_action, :bullet_big, :bullet_small



end
