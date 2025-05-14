# spec/features/tickets/show_spec.rb
require 'rails_helper'

RSpec.describe 'Ticket details view', type: :feature do
  let!(:ticket) { Ticket.create(title: "Login issue", description: "User cannot log in", status: :in_progress) }

  it "displays ticket attributes" do
    visit ticket_path(ticket)

    expect(page).to have_content(ticket.title.titleize)
    expect(page).to have_content("Status")
    expect(page).to have_content(ticket.status.humanize)
    expect(page).to have_content("Description")
    expect(page).to have_content(ticket.description)
    expect(page).to have_content("Created")
  end
end