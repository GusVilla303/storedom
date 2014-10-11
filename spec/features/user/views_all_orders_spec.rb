require 'rails_helper'

RSpec.feature 'User views all orders' do
  scenario 'at /orders' do
    10.times { create(:order) }
    visit orders_path
    expect(page).to have_content("10 Orders")
  end
end
