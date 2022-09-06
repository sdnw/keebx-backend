class User < ApplicationRecord
    has_many :items, through :cart

    validates :name, presence: true
    validates :password, presence: true

    has_secure_password
end
