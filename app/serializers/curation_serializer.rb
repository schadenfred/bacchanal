class CurationSerializer < ActiveModel::Serializer
  attributes :id, :curatable_type, :curatable_id, :review_id
end
