class Review < ActiveRecord::Base

  belongs_to :reviewer, class_name: "User", foreign_key: :reviewer_id
  belongs_to :wine

  validates :wine, :reviewer, presence: true
  validates :wine_id, uniqueness: { scope: :reviewer_id }

end
