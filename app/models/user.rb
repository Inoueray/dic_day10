class User < ApplicationRecord
  validates :email, presence: true
  validates :name, presence: true

  before_validation { email.downcase! }
end
