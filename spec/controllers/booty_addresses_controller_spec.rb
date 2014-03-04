require "spec_helper"

describe BootyAddressesController do
  context "GET new" do
    it "sets @booty_address" do
      get :new
      expect(assigns[:booty_address]).to be_instance_of(BootyAddress)
    end
  end

  context "POST create" do
    it "sets @booty_address with valid input" do
      b = Fabricate.attributes_for(:booty_address)
      post :create, booty_address: b
      expect(assigns[:booty_address]).to be_instance_of(BootyAddress)
    end

    it "creates booty with valid input" do
      b = Fabricate.attributes_for(:booty_address)
      post :create, booty_address: b
      expect(BootyAddress.find_by(b).attributes).to include(b)
    end

    it "redirects to #show with valid input" do
      b = Fabricate.attributes_for(:booty_address)
      post :create, booty_address: b
      expect(response).to redirect_to(
        booty_address_path(BootyAddress.find_by(b)))
    end

    it "sets @booty_address with invalid input" do
      post :create, booty_address: {}
      expect(assigns[:booty_address]).to be_instance_of(BootyAddress)
    end

    it "does not create booty address with invalid input" do
      post :create, booty_address: {}
      expect(BootyAddress.count).to eq(0)
    end
  end
end
