# As a user
# When I visit a vending machine show page
# I see the name of all of the snacks associated with that vending machine along with their price

require 'rails_helper'

RSpec.describe 'vending machine show page', type: :feature do
  describe 'As a user' do
    before :each do
      @sam = Owner.create(name: "Sam's Snacks")
      @sam_turing = @sam.machines.create(location: "Turing Basement")
      @twix = @sam_turing.snacks.create!(name: "Twix", price: 1.5)
      @mm = @sam_turing.snacks.create!(name: "M&Ms", price: 1)
    end

    it "When I visit a vending machine show page, I see the name of all the snacks associated with that vending machine along with their price" do
      visit machine_path(@sam_turing)

      expect(page).to have_content("Twix")
      expect(page).to have_content("$1.50")
      expect(page).to have_content("M&Ms")
      expect(page).to have_content("$1.00")
    end
  end
end
