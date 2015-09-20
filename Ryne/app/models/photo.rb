class Photo < ActiveRecord::Base
  belongs_to :user
  has_attached_file :uploaded_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :uploaded_photo, content_type: /\Aimage\/.*\Z/
end
