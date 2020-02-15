require 'rails_helper'

RSpec.describe ItineraryController, type: :controller do
 describe "Itinerary#index action" do 
    it "should successfully show the page" do
    	get :index 
      expect(response).to have_http_status(:success)
    end 
  end 
end
