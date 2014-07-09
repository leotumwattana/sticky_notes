class NotesController < ApplicationController

  def index
    @notes = Notes.all
  end

  def new
  end

  def create
    notes_params = params[:note]
    note = Notes.new
    note.from = notes_params[:from]
    note.title = notes_params[:title]
    note.content = notes_params[:content]
    note.save

    redirect_to root_path
  end

end