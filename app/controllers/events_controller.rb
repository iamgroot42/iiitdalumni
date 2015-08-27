class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    # params[:event][:start] = params[:event][:start].to_datetime
    # params[:event][:end] = params[:event][:end].to_datetime
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      # params[:event][:start] = params[:event][:start].to_datetime
      # params[:event][:end] = params[:event][:end].to_datetime
      t = params[:start_str].to_datetime
      params["event"]["start(1i)"] = t.strftime("%Y")
      params[:event]["start(2i)"] = t.strftime("%m")
      params[:event]["start(3i)"] = t.strftime("%d")
      params[:event]["start(4i)"] = t.strftime("%H")
      params[:event]["start(5i)"] = t.strftime("%M")
      t = params[:end_str].to_datetime
      params[:event]["end(1i)"] = t.strftime("%Y")
      params[:event]["end(2i)"] = t.strftime("%m")
      params[:event]["end(3i)"] = t.strftime("%d")
      params[:event]["end(4i)"] = t.strftime("%H")
      params[:event]["end(5i)"] = t.strftime("%M")
      puts params
      params.require(:event).permit(:start, :end, :title, :summary, :description, :user_id, :contact, :venue, :fblink, :photo)
    end
end
