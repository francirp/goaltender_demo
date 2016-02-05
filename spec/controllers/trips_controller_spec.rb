require 'rails_helper'

RSpec.describe TripsController, :type => :controller do
  describe "POST #create" do
    context "with valid params" do
      let(:valid_attributes) { attributes_for(:trip) }

      it "creates a new trip" do
        expect { post :create, {:trip => valid_attributes} }.to change(Trip, :count).by(1)
      end
    end
  end
end
