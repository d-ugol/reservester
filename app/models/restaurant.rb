class Restaurant < ApplicationRecord

	# DU: default_url points to a default image if the specfied image is missing.
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" } 
  # Donna Ugol, 3/1/2018 added validation, required by current version of PaperClip
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]}
  belongs_to :owner

  # DU, 3/8/2018. Add methods for the Google Maps feature.
  geocoded_by :address
	after_validation :geocode
end