require 'rails_helper'

RSpec.describe "When I visit '/students'" do
    it "can list students (alphabetically) and the number of professors each student has" do

      visit "/students"

      expect(page).to have_content("#{@harry.name}: #{@harry.professor_count}")
      expect(page).to have_content("#{@malfoy.name}: #{@malfoy.professor_count}")
      expect(page).to have_content("#{@longbottom.name}: #{@longbottom.professor_count}")


      expect('Draco Malfoy').to appear_before('Harry Potter', only_text: true)
      expect('Draco Malfoy').to appear_before('Neville Longbottom', only_text: true)
      expect('Harry Potter').to appear_before('Neville Longbottom', only_text: true)
    end
end
