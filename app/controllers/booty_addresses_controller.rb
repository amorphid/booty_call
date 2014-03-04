class BootyAddressesController < ApplicationController
  def new
    @booty_address = BootyAddress.new
  end
end
