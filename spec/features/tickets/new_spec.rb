require 'rails_helper'

RSpec.describe 'Creating a ticket', type: :feature do
  it "allows a user to create a new ticket" do
    visit new_ticket_path

    fill_in "ticket_title", with: "Can't access dashboard"
    fill_in "ticket_description", with: "App crashes when trying to open the dashboard"
    select "Open", from: "ticket_status"
    
    click_button "🚀 Create Ticket"
    
    new_ticket = Ticket.last
    
    expect(current_path).to eq(ticket_path(new_ticket))
    expect(page).to have_content(new_ticket.title.titleize)
  end
end