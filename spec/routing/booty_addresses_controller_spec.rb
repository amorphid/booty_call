require "spec_helper"

describe BootyAddressesController do
  it do
    should route(:get, "/booty_addresses/new").to(
      controller: "booty_addresses",
      action: "new"
    )
  end
end
