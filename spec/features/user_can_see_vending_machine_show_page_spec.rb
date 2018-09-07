require 'rails_helper'
# As a user
# When I visit a vending machine show page
# I see the name of all of the snacks associated with that vending machine along with their price

feature 'User can see vending machine show page' do
  context 'user visits machines/id' do
    scenario 'user sees a list of names and prices for that vending machine' do
      sam = Owner.create(name: "Sam's Snacks")
      bot = sam.machines.create(location: "Turing Basement", id: 1)
      item_1 = Item.create(name: "Reesees", price: 1.25, machine_id: 1)
      item_2= Item.create(name: "Oreos", price: 1.75, machine_id: 1)


      visit machine_path(bot)

      expect(page).to have_content("#{item_1.price}")
      expect(page).to have_content(item_1.name)
      expect(page).to have_content("#{item_2.price}")
      expect(page).to have_content(item_2.name)
    end
  end
end
