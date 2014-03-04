class BootyAddressesController < ApplicationController
  def create
    @booty_address = BootyAddress.new(params_booty_address)

    if @booty_address.save
      flash[:notice] = "Booty Address was successfully created"
      redirect_to booty_address_path(@booty_address)
    else
      render action: "new"
    end
  end

  def new
    @booty_address = BootyAddress.new
  end

  def show
    @booty_address = BootyAddress.find(params[:id])
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
