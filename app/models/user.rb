class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shorties, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :owner_bookings, through: :shorties, source: :bookings
  validates :email, :password, presence: true

  def has_pending_request?(user, current_user, my_client_bookings)
    pending_requests = false
    my_client_bookings.each do |booking|
      if user == current_user && booking.pending?
        pending_requests = true
      end
    end
    return pending_requests
  end

  def has_confirmed_request?(user, current_user, my_client_bookings)
    confirmed_requests = false
    my_client_bookings.each do |booking|
      if user == current_user && booking.confirmed?
        confirmed_requests = true
      end
    end
    return confirmed_requests
  end
end
