class User < ApplicationRecord
    has_many :journals
    has_many :meals
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
