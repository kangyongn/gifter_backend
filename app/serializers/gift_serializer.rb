class GiftSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :note, :sender_id, :user_id, :date, :song, :image, :opened

  belongs_to :user

  def image
    rails_blob_path(object.image, only_path: true) if object.image.attached?
  end
end
