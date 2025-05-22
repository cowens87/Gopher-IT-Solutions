require 'rails_helper'

RSpec.describe 'Ticket listing', type: :feature do
  before(:each) do
    @t1 = Ticket.create(title: "Old Ticket", description: "Description 1", status: :open, created_at: Date.new(2024, 2, 1))
    @t2 = Ticket.create(title: "New Ticket", description: "Description 2", status: :in_progress)
    visit tickets_path
  end

  it "shows a list of all submitted tickets with details" do
    within("#ticket-#{@t1.id}") do
      expect(page).to have_content(@t1.title)
      expect(page).to have_content(@t1.status.humanize)
    end

    within("#ticket-#{@t2.id}") do
      expect(page).to have_content(@t2.title)
      expect(page).to have_content(@t2.status.humanize)
    end
  end

  it "sorts ticket order by newest created_at date" do
    expect(page).to have_selector("table")

    within("table") do
      expect(page).to have_text(@t1.title.titleize)
      expect(page).to have_text(@t2.title.titleize)
      expect(@t1.title.titleize).to appear_before(@t2.title.titleize)
    end

    click_link "🆕 Sort by Newest"

    within("table") do
      expect(page).to have_text(@t1.title.titleize)
      expect(page).to have_text(@t2.title.titleize)
      expect(@t2.title.titleize).to appear_before(@t1.title.titleize)
      expect(@t1.title.titleize).to appear_after(@t2.title.titleize)
    end
  end
end