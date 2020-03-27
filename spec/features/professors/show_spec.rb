require 'rails_helper'

RSpec.describe 'visit /professor/:id' do
    it "see a list of the (alphabetically) of the students the professors have" do

      visit "/professors/#{@snape.id}"

      expect(page).to have_content('Harry Potter')
      expect(page).to have_content('Neville Longbottom')
      expect(page).not_to have_content('Draco Malfoy')

      expect('Harry Potter').to appear_before('Neville Longbottom', only_text: true)

    visit "/professors/#{@hagarid.id}"

      expect(page).to have_content('Harry Potter')
      expect(page).to have_content('Draco Malfoy')
      expect(page).not_to have_content('Neville Longbottom')

      expect('Draco Malfoy').to appear_before('Harry Potter', only_text: true)

      visit "/professors/#{@lupin.id}"

      expect(page).to have_content('Harry Potter')
      expect(page).to have_content('Draco Malfoy')
      expect(page).not_to have_content('Neville Longbottom')

      expect('Draco Malfoy').to appear_before('Harry Potter', only_text: true)
    end
end
