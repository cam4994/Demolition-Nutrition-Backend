class User < ApplicationRecord
    has_many :journals
    has_many :meals
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: { case_sensitive: false }
    validates :password, :presence => {:message => 'Password cannot be blank'}, 
        :length => {:within => 6..99, :message => 'Password length should be within 8 and 99 characters'}, 
        :if => Proc.new { new_record? || !password.nil? }
end
