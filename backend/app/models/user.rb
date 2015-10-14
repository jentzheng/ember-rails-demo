class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :user_profile
  has_one :address, through: :user_profile
  has_one :avatar, -> { where context: 'avatar' }, as: :assetable, class_name: "Asset::Image", dependent: :destroy
  has_many :posts

  delegate :url, to: :avatar, prefix: true
  delegate :first_name, to: :user_profile
  delegate :last_name, to: :user_profile
  delegate :line_1, :line_2, :city, :state_code, :zip_or_postcode, :country_code,
    to: :address, prefix: true
end