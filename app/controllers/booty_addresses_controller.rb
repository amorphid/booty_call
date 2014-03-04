class BootyAddressesController < ApplicationController
  def create
    @booty_address = BootyAddress.new
    @booty_address.save
    render action: "new"
  end

  def new
    @booty_address = BootyAddress.new
  end
end
