require 'rails_helper'

feature 'Add new note' do

  scenario 'user has some way to add note' do
    visit '/'
    expect(page).to have_link 'Add note'
  end

  scenario 'user clicks add note' do
    visit '/'
    click_link 'Add note'
    expect(page).to have_content 'New note'
  end

  scenario 'note page has form for new notes' do
    visit '/notes/new'
    expect(find('input#from')).to_not be_nil
    expect(find('input#title')).to_not be_nil
    expect(find('input#content')).to_not be_nil
    expect(page).to have_button 'Stick it to the man!'
  end

  scenario 'submitting form will create new note' do
    visit '/notes/new'
    fill_in 'from', with: 'Iron Man'
    fill_in 'title', with: 'Kit Kat'
    fill_in 'content', with: 'Best in the world!'
    click_button 'Stick it to the man!'

    expect(page).to have_content('Kit Kat')
    expect(page).to have_content('Iron Man')
  end

end