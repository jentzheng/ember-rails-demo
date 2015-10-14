class UserSerializer < ApplicationSerializer
  attributes :id, :email, :avatar_url, :first_name, :last_name,
    :address_line_1,
    :address_line_2,
    :address_city,
    :address_state_code,
    :address_zip_or_postcode,
    :address_country_code

  has_many :posts

  def avatar_url
    ApplicationController.helpers.asset_url(object.avatar_url)
  end
end