module Api::V1
class TalksController < ApplicationController
  def index
    @note = Note.find(params[:note_id])
    @talks = @note.talks
  end

  # GET /talks/1
  # GET /talks/1.json
  def show
    begin
      @note = Note.find(params[:note_id])
      @talk = @note.talks.find(params[:id])
    rescue Exception => e
      @a = '{
      "error" : "not_found"
      }'
      @data = JSON.parse(@a)
      render json: @data, status: 404
      return
    end
  end

  # POST /talks
  # POST /talks.json
  def create
    @note = Note.find(params[:note_id])
    @talk = @note.talks.create(talk_params)
    render json: @talk, status: :created

  end

  # PATCH/PUT /talks/1
  # PATCH/PUT /talks/1.json
  def update
    begin
      @note = Note.find(params[:note_id])
      @talk = @note.talks.find(params[:id])
      if @talk.update(talk_params)
       render json: @talk
      end
    rescue Exception => e
      @a = '{
      "error" : "not_found"
      }'
      @data = JSON.parse(@a)
      render json: @data, status: 404
      return
    end



    #note = Note.find(params[:note_id])
    #@talk = @note.talks.find(params[:id])
    #if @talk.update(talk_params)
    # render json: @talk, status: :ok
    #else
    # render json: @note.errors, status: :unprocessable_entity
    #end


    #respond_to do |format|
    #  if @talk.update(talk_params)
    #    format.html { redirect_to '/notes/'+ @talk.note_id.to_s + '/talks/', notice: 'Talk was successfully updated.' }
    #    format.json { render :show, status: :ok, location: @talk }
    #  else
    #    format.html { render :edit }
    #    format.json { render json: @talk.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  # DELETE /talks/1
  # DELETE /talks/1.json
  def destroy
    begin
      @note = Note.find(params[:note_id])
      @talk = @note.talks.find(params[:id])
      if @talk.save
        render json: @talk
      end
    rescue Exception => e
      @a = '{
      "error" : "not_found"
      }'
      @data = JSON.parse(@a)
      render json: @data, status: 404
      return
    end
    @talk.destroy



    #note = Note.find(params[:note_id])
    #@talk = @note.talks.find(params[:id])
    #render json: @talk, status: :ok
    #@talk.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_talk
      @talk = Talk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def talk_params
      params.require(:talk).permit(:author, :comment, :note_id)
    end
end
end
