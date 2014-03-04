require "spec_helper"

describe BootyAddressesController do
  context "#new" do
    it "sets @booty_address" do
      get :new
      expect(assigns[:booty_address]).to be_instance_of(BootyAddress)
    end
  end

  context "#create" do
    it "sets @booty_address"
    it "redirects to #show"
    it "creates booty with valid input"
    it "does not create boot with invalid input"
  end
end
