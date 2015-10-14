class PostSerializer < ApplicationSerializer
  attributes :id, :title, :body
  belongs_to :user

  has_one :featured, polymorphic: true
  has_many :images, polymorphic: true
  has_many :audios, polymorphic: true
end
