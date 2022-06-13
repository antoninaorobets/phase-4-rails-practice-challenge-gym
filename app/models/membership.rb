class Membership < ApplicationRecord
  belongs_to :client
  belongs_to :gym

    validates :charge, presence: true
    validates :client_id, presence: true
    validates :gym_id, presence: true

    validate :one_per_gym

    def one_per_gym
    
      mem =  Membership.all.where("client_id = ? and gym_id = ?",client_id, gym_id )
      if mem.length > 0
        errors.add(:client_id, "already has membership")
        end
        
    end

 
end
