require 'rails_helper'

feature 'list notes' do

  scenario 'list all notes' do

    note = Notes.new
    note.title = 'Favorite snack'
    note.from = 'Leo'
    note.content = 'Kit Kat'
    note.save

    note = Notes.new
    note.title = "lala"
    note.from = "Nick"
    note.content = "You can't beat my 2048 score!"
    note.save

    visit '/'
    expect(page).to have_content 'Notes'
    expect(page).to have_content 'Favorite snack'
    expect(page).to have_content 'Leo'

    expect(page).to have_content "lala"
    expect(page).to have_content 'Nick'
  end

end
