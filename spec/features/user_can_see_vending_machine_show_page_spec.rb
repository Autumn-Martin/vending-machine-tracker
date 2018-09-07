require 'rails_helper'
# As a user
# When I visit a vending machine show page
# I see the name of all of the snacks associated with that vending machine along with their price

feature 'User can see vending machine show page' do
  context 'user visits machines/id' do
    scenario 'user sees a list of names and prices for that vending machine' do
      sam = Owner.create(name: "Sam's Snacks")
      bot = sam.machines.create(location: "Turing Basement")
      item_1 = sam.machines.items.create(name: "Reesees", price: "$1")
      item_2= sam.machines.items.create(name: "Reesees", price: "$1")

      visit machines_path(bot)

      expect(page).to have_content()
    end
  end
end
