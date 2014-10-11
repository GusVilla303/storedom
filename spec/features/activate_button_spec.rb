require 'rails_helper'

RSpec.feature "User clicks on activate button" do

  scenario "and makes all items active" do
    10.times { Item.create(active: false) }

    visit items_path(show_inactive: true)
    
    expect(page).to have_content("0 Items")
    items = all(".item")
    items.each do |item|
      within(item) do
         click_on 'Activate'
      end
    end
    expect(page).to have_content("10 Items")
  end
end
