class User < ApplicationRecord
    has_secure_password

    has_many :books

    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, on: :create

    before_save { |user| user.email = user.email.downcase }
end
