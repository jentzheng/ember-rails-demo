class Asset::ImageSerializer < AssetSerializer
  attributes :url_square
  
  def url_square
    ApplicationController.helpers.asset_url(object.url(:square))
  end
end