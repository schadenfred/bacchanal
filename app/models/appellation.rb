class Appellation < ActiveRecord::Base

  has_many :appellable, through: :appellations_appellable
end
