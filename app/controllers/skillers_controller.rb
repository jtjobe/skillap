class SkillersController < ApplicationController
  before_action :set_skiller, only: [:show, :edit, :update, :destroy]

  # GET /skillers
  # GET /skillers.json
  def index
    @skillers = Skiller.all
  end

  # GET /skillers/1
  # GET /skillers/1.json
  def show
  end

  # GET /skillers/new
  def new
    @skiller = Skiller.new
  end

  # GET /skillers/1/edit
  def edit
  end

  # POST /skillers
  # POST /skillers.json
  def create
    @skiller = Skiller.new(skiller_params)

    respond_to do |format|
      if @skiller.save
        format.html { redirect_to @skiller, notice: 'Skiller was successfully created.' }
        format.json { render :show, status: :created, location: @skiller }
      else
        format.html { render :new }
        format.json { render json: @skiller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skillers/1
  # PATCH/PUT /skillers/1.json
  def update
    respond_to do |format|
      if @skiller.update(skiller_params)
        format.html { redirect_to @skiller, notice: 'Skiller was successfully updated.' }
        format.json { render :show, status: :ok, location: @skiller }
      else
        format.html { render :edit }
        format.json { render json: @skiller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skillers/1
  # DELETE /skillers/1.json
  def destroy
    @skiller.destroy
    respond_to do |format|
      format.html { redirect_to skillers_url, notice: 'Skiller was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skiller
      @skiller = Skiller.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skiller_params
      params.require(:skiller).permit(:first_name, :last_name, :social_link_1, :social_link_2, :location, :bio, :user_id)
    end
end
