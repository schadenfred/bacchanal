class Product < ActiveRecord::Base
  include Targetable

  belongs_to :producer
end
