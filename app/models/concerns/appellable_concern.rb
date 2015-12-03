module AppellableConcern

  extend ActiveSupport::Concern

  included do 
    has_many :addresses_appellables, through: :addresses
    has_many :appellations, through: :addresses_appellables
  end
end
