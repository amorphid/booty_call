class BootyAddressesController < ApplicationController
  def create
    @booty_address = BootyAddress.new(params_booty_address)
    @booty_address.save
    render action: "new"
  end

  def new
    @booty_address = BootyAddress.new
  end

  private

  def params_booty_address
    params[:booty_address].permit(
      :apt_number,
      :city,
      :state,
      :street1,
      :zip
    )
  end
end
