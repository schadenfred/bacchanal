class WishSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :quantity, :product_id
end
