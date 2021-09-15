class User < ApplicationRecord
  has_secure_password

  has_many :transactions, :dependent => :destroy
  has_many :reservations
  has_many :feedbacks, :dependent => :destroy

  # validates :phone_number, length: { is: 10 }
  # validates :card_number, length: { is: 16 }
  # validates :cvv, length: { is: 3 }

  validates :email, presence: true, uniqueness: true
end
