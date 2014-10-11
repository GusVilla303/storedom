require 'rails_helper'

RSpec.feature 'Admin views all orders' do
  scenario 'at /admin/orders' do
    10.times { create(:order) }
    visit admin_orders_path
    expect(page).to have_content("10 Orders")
  end
end
