require "spec_helper"

describe BootyAddressesController do
  it do
    should route(:get, "/booty_addresses/new").to(
      controller: "booty_addresses",
      action: "new"
    )
  end

  it do
    should route(:get, "/booty_addresses/1").to(
      controller: "booty_addresses",
      action: "show",
      id: 1
    )
  end

  it do
    should route(:post, "/booty_addresses").to(
      controller: "booty_addresses",
      action: "create"
    )
  end
end
