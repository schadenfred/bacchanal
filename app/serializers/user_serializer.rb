class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bio
  has_many :identities
end
