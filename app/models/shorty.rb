class Shorty < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_name_height_price,
    against: [ :name, :height, :price ],
    using: {
      tsearch: { prefix: true }
    }
end
