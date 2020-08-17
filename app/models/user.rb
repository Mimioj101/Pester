class User < ApplicationRecord
    has_many :matches
    has_many :cockroaches, through: :matches
end
