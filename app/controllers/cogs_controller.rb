class CogsController < ApplicationController
  before_action :set_cog, only: [:show, :edit, :update, :destroy]

  # GET /cogs
  # GET /cogs.json
  def index
    @cogs = Cog.all
  end

  # GET /cogs/1
  # GET /cogs/1.json
  def show
  end

  # GET /cogs/new
  def new
    @cog = Cog.new
  end

  # GET /cogs/1/edit
  def edit
  end

  # POST /cogs
  # POST /cogs.json
  def create
    @cog = Cog.new(cog_params)

    respond_to do |format|
      if @cog.save
        format.html { redirect_to @cog, notice: 'Cog was successfully created.' }
        format.json { render :show, status: :created, location: @cog }
      else
        format.html { render :new }
        format.json { render json: @cog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cogs/1
  # PATCH/PUT /cogs/1.json
  def update
    respond_to do |format|
      if @cog.update(cog_params)
        format.html { redirect_to @cog, notice: 'Cog was successfully updated.' }
        format.json { render :show, status: :ok, location: @cog }
      else
        format.html { render :edit }
        format.json { render json: @cog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cogs/1
  # DELETE /cogs/1.json
  def destroy
    @cog.destroy
    respond_to do |format|
      format.html { redirect_to cogs_url, notice: 'Cog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cog
      @cog = Cog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cog_params
      params.require(:cog).permit(:name, :size, :color)
    end
end
