require 'rails_helper'

RSpec.describe Notes, :type => :model do

  before :each do
    @valid_note = Notes.new
    @valid_note.title = "hello"
    @valid_note.content = "Some content"
    @valid_note.from = "Under the sea"
  end

  it "is valid with content" do
    @valid_note.save
    expect(@valid_note).to be_valid
  end

  it "is invalid without content" do
    @valid_note.content = ""
    @valid_note.save
    expect(@valid_note).to be_invalid
  end

  it "has default title of 'note' if title not specified" do
    @valid_note.title = ""
    @valid_note.save
    expect(@valid_note.title).to eq('note')
  end

  it "has title 'hello' if user specified it as 'hello'" do
    @valid_note.save
    expect(@valid_note.title).to eq('hello')
  end

end
