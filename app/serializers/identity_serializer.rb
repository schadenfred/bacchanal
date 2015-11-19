class IdentitySerializer < ActiveModel::Serializer
  attributes :id, :provider, :uid, :created_at, :updated_at, :identifiable_id, :identifiable_type, :link, :private
end
