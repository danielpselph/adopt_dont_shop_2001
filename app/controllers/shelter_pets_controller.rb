class ShelterPetsController < ApplicationController

    def index
        @shelter = Shelter.find(params[:shelter_id])
        # binding.pry
    end
    

end