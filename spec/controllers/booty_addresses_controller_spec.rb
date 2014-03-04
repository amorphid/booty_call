require "spec_helper"

describe BootyAddressesController do
  context "GET /new" do
    it "sets @booty_address" do
      get :new
      expect(assigns[:booty_address]).to be_instance_of(BootyAddress)
    end
  end
end
