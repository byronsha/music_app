class NotesController < ApplicationController
  def create
    note = Note.new(user_id: current_user.id, track_id: note_params[:track_id], notes: note_params[:notes])
    note.save!
    redirect_to bands_url
  end

  def note_params
    params.require(:note).permit(:track_id, :notes)
  end
end
