class Photo < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: {
    small: "64x64",
    med: "100x100",
    large: "360x250"
  }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
