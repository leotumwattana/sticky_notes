require 'rails_helper'

feature 'list notes' do

  scenario 'list all notes' do
    visit '/'
    expect(page).to have_content 'Notes'
  end

end