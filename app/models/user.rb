class User < ApplicationRecord
    has_many :matches
    has_many :cockroaches, through: :matches

    has_secure_password

    validates :name, :age, :password, :bio, :preference, :img_url, presence: true
    validates :name, uniqueness: true
    
    validates :password, length: {minimum: 6}
    validates_length_of :bio, :minimum => 100

    def getCockroachesMatchedWithCurrentUser
        arr = []
        Match.all.each do |f|
            if f.user_id == @current_user.id
                arr << f.cockroach_id
            end
        end
        arr1 = []
        arr.each do |g|
            instance = Cockroach.find_by(id: g)
            arr1 << instance
        end
        arr1
        byebug
    end
end
