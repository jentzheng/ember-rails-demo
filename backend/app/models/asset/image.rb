class Asset::Image < Asset
  has_attached_file :attachment,
    styles: { square: "480x480#", thumb: "96x96#" }
  validates_attachment_content_type :attachment, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end