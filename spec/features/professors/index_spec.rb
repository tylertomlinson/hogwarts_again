require 'rails_helper'

RSpec.describe "visit '/professors'", type: :feature do
    it "can see a list of professors with their name, age, and specialty" do

      visit '/professors'

      expect(page).to have_content(@snape.name)
      expect(page).to have_content(@snape.age)
      expect(page).to have_content(@snape.specialty)

      expect(page).to have_content(@hagarid.name)
      expect(page).to have_content(@hagarid.age)
      expect(page).to have_content(@hagarid.specialty)

      expect(page).to have_content(@lupin.name)
      expect(page).to have_content(@lupin.age)
      expect(page).to have_content(@lupin.specialty)

      expect(@lupin.name).to appear_before(@hagarid.name, only_text: true)
      expect(@lupin.name).to appear_before(@snape.name, only_text: true)
  end

  it "expect to see the average age of all students" do

  visit '/professors'

  expect(page).to have_content('Average Age: 11')
  expect(page).to have_content('Average Age: 11.5')
  expect(page).to have_content('Average Age: 11.5')
  expect(page).not_to have_content('Average Age: 20')
  end
end
