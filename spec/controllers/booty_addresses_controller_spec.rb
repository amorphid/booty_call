require "spec_helper"

describe BootyAddressesController do
  context "GET new" do
    it "sets @booty_address" do
      get :new
      expect(assigns[:booty_address]).to be_instance_of(BootyAddress)
    end
  end

  context "POST create" do
    it "sets @booty_address with invalid input" do
      post :create
      expect(assigns[:booty_address]).to be_instance_of(BootyAddress)
    end

    it "does not create booty address with invalid input" do
      post :create
      expect(BootyAddress.count).to eq(0)
    end

    it "redirects to #show"
    it "creates booty with valid input"
  end
end
