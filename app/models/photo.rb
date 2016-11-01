class Photo < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: {
    small: "64x64",
    med: "180x250",
    large: "360x480"
  }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
