class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :shorty
  enum status: {
    pending: 0,
    confirmed: 1,
    active: 2,
    archived: 3
  }
end
