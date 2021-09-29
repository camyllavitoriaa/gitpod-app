class ConscesionariaController < ApplicationController
  before_action :set_conscesionarium, only: %i[ show edit update destroy ]

  # GET /conscesionaria or /conscesionaria.json
  def index
    @conscesionaria = Conscesionarium.all
  end

  # GET /conscesionaria/1 or /conscesionaria/1.json
  def show
  end

  # GET /conscesionaria/new
  def new
    @conscesionarium = Conscesionarium.new
  end

  # GET /conscesionaria/1/edit
  def edit
  end

  # POST /conscesionaria or /conscesionaria.json
  def create
    @conscesionarium = Conscesionarium.new(conscesionarium_params)

    respond_to do |format|
      if @conscesionarium.save
        format.html { redirect_to @conscesionarium, notice: "Conscesionarium was successfully created." }
        format.json { render :show, status: :created, location: @conscesionarium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @conscesionarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conscesionaria/1 or /conscesionaria/1.json
  def update
    respond_to do |format|
      if @conscesionarium.update(conscesionarium_params)
        format.html { redirect_to @conscesionarium, notice: "Conscesionarium was successfully updated." }
        format.json { render :show, status: :ok, location: @conscesionarium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @conscesionarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conscesionaria/1 or /conscesionaria/1.json
  def destroy
    @conscesionarium.destroy
    respond_to do |format|
      format.html { redirect_to conscesionaria_url, notice: "Conscesionarium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conscesionarium
      @conscesionarium = Conscesionarium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conscesionarium_params
      params.require(:conscesionarium).permit(:nome, :cidade, :endereco, :anos_de_mercado)
    end
end
