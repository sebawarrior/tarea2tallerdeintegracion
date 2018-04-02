require 'json'
module Api::V1
class NotesController < ApiController
  # GET /notes
  # GET /notes.json
  def index
    @notes = Note.all
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    #note = Note.find(params[:id])
    begin
      @note = Note.find(params[:id])
    rescue Exception => e
      @a = '{
      "error" : "not_found"
      }'
      @data = JSON.parse(@a)
      render json: @data, status: 404
      return
    end
  end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(note_params)
    if @note.save
      render json: @note, status: :created, location: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    #note = Note.find(params[:id])
    #if @note.update(note_params)
    # render json: note
    #else
    # render json: @note.errors, status: :unprocessable_entity
    #end
    begin
      @note = Note.find(params[:id])
      if @note.update(note_params)
       render json: @note
      end
    rescue Exception => e
      @a = '{
      "error" : "not_found"
      }'
      @data = JSON.parse(@a)
      render json: @data, status: 404
      return
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    #note = Note.find(params[:id])
    #if @note.save
    #  render json: @note, status: :ok, location: note
    #else
    #  render json: @note.errors, status: :unprocessable_entity
    #end
    #@note.destroy

    begin
      @note = Note.find(params[:id])
      if @note.save
        render json: @note
      end
    rescue Exception => e
      @a = '{
      "error" : "not_found"
      }'
      @data = JSON.parse(@a)
      render json: @data, status: 404
      return
    end
    @note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:title, :subtitle, :body)
    end
end
end
