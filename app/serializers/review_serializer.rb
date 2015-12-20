class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :wine_id, :reviewer_id
end
