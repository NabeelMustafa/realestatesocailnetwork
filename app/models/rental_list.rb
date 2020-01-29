class RentalList < ApplicationRecord
  belongs_to :user
  has_one :rental_listing_amenity_info, dependent: :destroy
  has_many :rental_listing_bedrooms, dependent: :destroy
  has_many :rental_listing_images, dependent: :destroy
  has_one :rental_listing_space_usage,  dependent: :destroy
  has_many :rental_listing_common_spaces, dependent: :destroy

  accepts_nested_attributes_for :rental_listing_bedrooms, allow_destroy: true
  accepts_nested_attributes_for :rental_listing_common_spaces, allow_destroy: true
  accepts_nested_attributes_for :rental_listing_images, allow_destroy: true
  accepts_nested_attributes_for :rental_listing_space_usage, allow_destroy: true
  accepts_nested_attributes_for :rental_listing_amenity_info, allow_destroy: true
end
