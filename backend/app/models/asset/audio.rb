class Asset::Audio < Asset
  has_attached_file :attachment
  validates_attachment_content_type :attachment, :content_type => [ 'application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mp3' ]
end