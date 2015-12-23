module CuratableConcern

  extend ActiveSupport::Concern

  included do 
    has_many :curations, as: :curatable, dependent: :destroy
    has_many :curated_reviews, through: :curations, source: :review 
  end
end
