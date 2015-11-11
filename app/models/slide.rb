class Slide < ActiveRecord::Base

  store_accessor :properties, :call_to_action, :bullet_big, :bullet_small
end
