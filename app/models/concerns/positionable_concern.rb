module PositionableConcern

  extend ActiveSupport::Concern

  included do
    has_many :positions, as: :positionable, dependent: :destroy
  end
end