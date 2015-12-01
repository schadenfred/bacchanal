class AppellationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :appellable_type, :appellable_id
end
