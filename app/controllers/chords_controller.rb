class ChordsController < ApplicationController
  before_action :set_chord, only: [:show, :edit, :update, :destroy]

  # GET /chords
  def index
    @chords = Chord.all
  end

  # GET /chords/1
  def show
  end

  # GET /chords/new
  def new
    @chord = Chord.new
  end

  # GET /chords/1/edit
  def edit
  end

  # POST /chords
  def create
    @chord = Chord.new(chord_params)

    if @chord.save
      redirect_to @chord, notice: 'Chord was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /chords/1
  def update
    if @chord.update(chord_params)
      redirect_to @chord, notice: 'Chord was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /chords/1
  def destroy
    @chord.destroy
    redirect_to chords_url, notice: 'Chord was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chord
      @chord = Chord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chord_params
      params.require(:chord).permit(:name)
    end
end
