class AttachmentSerializer < ActiveModel::Serializer
  attributes :id, :attachment_uid, :attachment_name, :name, :summary
end
