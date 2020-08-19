class User < ApplicationRecord
    has_many :matches
    has_many :cockroaches, through: :matches

    has_secure_password

    validates :name, :age, :password, :bio, :preference, :img_url, presence: true
    validates :name, uniqueness: true
    
    validates :password, length: {minimum: 6}
    validates_length_of :bio, :minimum => 100

end
