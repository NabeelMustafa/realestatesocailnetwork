class ListSell < ApplicationRecord
  belongs_to :user
  has_one :sell_building_detail, dependent: :destroy
  has_one :other_detail, dependent: :destroy
  has_many :sell_visit_times, dependent: :destroy
  has_many :rental_images, dependent: :destroy
  has_many :room_details, dependent: :destroy

  accepts_nested_attributes_for :sell_visit_times, allow_destroy: true
  accepts_nested_attributes_for :sell_building_detail, allow_destroy: true
  accepts_nested_attributes_for :rental_images, allow_destroy: true
  accepts_nested_attributes_for :room_details, allow_destroy: true
  accepts_nested_attributes_for :other_detail, allow_destroy: true
end
