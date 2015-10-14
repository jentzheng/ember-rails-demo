class AssetSerializer < ApplicationSerializer
  attributes :id, :title, :context, :url
  belongs_to :assetable, polymorphic: true

  def url
    ApplicationController.helpers.asset_url(object.url)
  end
end