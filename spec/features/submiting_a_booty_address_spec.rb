require "spec_helper"

feature "Submitting a booty address" do
  background { visit new_booty_address_path }

  scenario "displays success message if input valid" do
    b = Fabricate.attributes_for(:booty_address)
    fill_in :booty_address_street1,    with: b[:street1]
    fill_in :booty_address_apt_number, with: b[:apt_number]
    fill_in :booty_address_city,       with: b[:city]
    fill_in :booty_address_state,      with: b[:state]
    fill_in :booty_address_zip,        with: b[:zip]
    click_button("Submit")
    expect(page.body).to have_content("Booty Address was successfully created")
  end

  scenario "displays failure message if input invalid" do
    click_button("Submit")
    expect(page.body).to have_content("Street1 can't be blank")
    expect(page.body).to have_content("City  can't be blank")
    expect(page.body).to have_content("State can't be blank")
    expect(page.body).to have_content("Zip can't be blank")
  end
end
