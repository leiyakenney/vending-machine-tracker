require 'rails_helper'

RSpec.describe 'snack show page', type: :feature do
  describe 'As a visitor' do
    before :each do
      @sam = Owner.create(name: "Sam's Snacks")
      @sam_turing = @sam.machines.create(location: "Turing Basement")
      @twix = @sam_turing.snacks.create!(name: "Twix", price: 1.5)
      @mm = @sam_turing.snacks.create!(name: "M&Ms", price: 1)
      @sam_don = @sam.machines.create(location: "Don's Mixed Drinks")
      @snickers = @sam_don.snacks.create!(name: "Snickers", price: 1.5)
      @pop = @sam_don.snacks.create!(name: "Pop Tarts", price: 2.5)
      @twix = @sam_don.snacks.create!(name: "Twix", price: 1.5)
    end

    it "When I visit a snack show page, I see the snack's: name, price, locations, average snack price in those vending machines, and count of the different types of things in those machines" do
      visit snack_path(@twix)

      expect(page).to have_content("Twix")
      expect(page).to have_content("$1.50")
      expect(page).to have_content("Don's Mixed Drinks (3 kinds of snacks, average price: $1.83)")
      expect(page).to have_content("Turing Basement (2 kinds of snacks, average price: $1.25)")
    end

  end
end
