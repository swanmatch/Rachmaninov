class ComposersController < ApplicationController
  before_action :set_composer, only: [:show, :edit, :update, :destroy]

  # GET /composers
  # GET /composers.json
  def index
    @composers = Composer.all
  end

  # GET /composers/1
  # GET /composers/1.json
  def show
  end

  # GET /composers/new
  def new
    @composer = Composer.new
  end

  # GET /composers/1/edit
  def edit
  end

  # POST /composers
  # POST /composers.json
  def create
    @composer = Composer.new(composer_params)

    respond_to do |format|
      if @composer.save
        format.html { redirect_to @composer, notice: 'Composer was successfully created.' }
        format.json { render :show, status: :created, location: @composer }
      else
        format.html { render :new }
        format.json { render json: @composer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /composers/1
  # PATCH/PUT /composers/1.json
  def update
    respond_to do |format|
      if @composer.update(composer_params)
        format.html { redirect_to @composer, notice: 'Composer was successfully updated.' }
        format.json { render :show, status: :ok, location: @composer }
      else
        format.html { render :edit }
        format.json { render json: @composer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /composers/1
  # DELETE /composers/1.json
  def destroy
    @composer.destroy
    respond_to do |format|
      format.html { redirect_to composers_url, notice: 'Composer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_composer
      @composer = Composer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def composer_params
      params.require(:composer).permit(:name, :created_by, :updated_by, :deleted_by, :deleted_at)
    end
end
