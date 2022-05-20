class Shorty < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_height_price,
    against: [ :name, :height, :price ],
    using: {
      tsearch: { prefix: true }
    }
end
