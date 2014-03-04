require "spec_helper"

feature "Submitting a booty address" do
  background { visit new_booty_address_path }

  scenario "displays success message if input valid"

  scenario "displays failure message if input invalid" do
    click_button("Submit")
    expect(page.body).to have_content("Street1 can't be blank")
    expect(page.body).to have_content("City  can't be blank")
    expect(page.body).to have_content("State can't be blank")
    expect(page.body).to have_content("Zip can't be blank")
  end
end
