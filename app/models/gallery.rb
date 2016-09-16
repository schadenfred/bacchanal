class Gallery < ApplicationRecord

  store_accessor :properties

  # associations
  belongs_to :galleriable, polymorphic: true

  has_many :photos, through: :slides
  has_many :slides

  accepts_nested_attributes_for :photos

  # validations
  validates :name, :galleriable, presence: true
  validates :name, uniqueness: { scope: [:galleriable_id, :galleriable_type] }


end
