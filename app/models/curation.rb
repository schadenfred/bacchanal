class Curation < ApplicationRecord

  belongs_to :curatable, polymorphic: true
  belongs_to :review
end
