class UserProfile < ActiveRecord::Base
  belongs_to :user
  has_one :address, as: :addressable, dependent: :destroy

  accepts_nested_attributes_for :address
end
