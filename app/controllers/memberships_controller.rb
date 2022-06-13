class MembershipsController < ApplicationController
    def create
        mem = Membership.create!(mamb_params)
        render json: mem, status: :created
    end

    private
    def mamb_params
      params.permit(:charge, :client_id, :gym_id)
    end
    
end
