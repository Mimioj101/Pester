class Match < ApplicationRecord
    belongs_to :user
    belongs_to :cockroach

    validates_uniqueness_of :cockroach_id, scope: :user_id#, :message => "...you have already matched with this cockroach."

    

end
