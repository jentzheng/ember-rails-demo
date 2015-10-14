class UserProfileSerializer < ApplicationSerializer
  attributes :id, :first_name, :last_name
  belongs_to :user


  def attributes *args
    Hash[super.map do |key, value|
      [key.to_s.dasherize.to_sym, value]
    end]
  end
end