require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
    describe "as a visitor" do
        it 'can see all shelter names and links' do

            shelter1 = Shelter.create(name: "Poncho's Pointy Pets",
                                        address: "555 Indiana Ave",
                                        city: "Mexico City",
                                        state: "Mexico City",
                                        zip: "01049")
    
            shelter2 = Shelter.create(name: "Reptiles R Us",
                                        address: "7566 Soda Springs Dr",
                                        city: "Clearwater Beach",
                                        state: "Florida",
                                        zip: "33767")
            shelter3 = Shelter.create(name: "Avian Friends Rescue",
                                        address: "9214 Luigia Lane",
                                        city: "San Diego",
                                        state: "California",
                                        zip: "92109")
    
            visit "/shelters"
    
            expect(page).to have_content(shelter1.name)
            expect(page).to have_content(shelter2.name)
            expect(page).to have_content(shelter3.name)
            expect(page).to have_button("Add A Shelter")

            click_on "Add A Shelter"

            expect(current_path).to eq("/shelters/new")
        end
    end
end


# User Story 4, Shelter Creation

# As a visitor
# When I visit the Shelter Index page
# Then I see a link to create a new Shelter, "New Shelter"
# When I click this link
# Then I am taken to '/shelters/new' where I  see a form for a new shelter
# When I fill out the form with a new shelter's:
# - name
# - address
# - city
# - state
# - zip
# And I click the button "Create Shelter" to submit the form
# Then a `POST` request is sent to '/shelters',
# a new shelter is created,
# and I am redirected to the Shelter Index page where I see the new Shelter listed.