require 'rails_helper'

RSpec.describe 'Ticket management', type: :feature do
  before(:each) do
    @t1 = Ticket.create(title: "Ticket 1", description: "Description 1", status: :open)
  end

  it "updates the status of a ticket" do
    visit edit_ticket_path(@t1)

    select "In progress", from: "ticket_status"

    click_button "💾 Update Ticket"

    expect(current_path).to eq(ticket_path(@t1))
    expect(page).to have_content("In progress") 
    expect(page).to_not have_content("Open") 
  end
end