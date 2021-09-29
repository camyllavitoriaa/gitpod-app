class ConcessionariaController < ApplicationController
  before_action :set_concessionarium, only: %i[ show edit update destroy ]

  # GET /concessionaria or /concessionaria.json
  def index
    @concessionaria = Concessionarium.all
  end

  # GET /concessionaria/1 or /concessionaria/1.json
  def show
  end

  # GET /concessionaria/new
  def new
    @concessionarium = Concessionarium.new
  end

  # GET /concessionaria/1/edit
  def edit
  end

  # POST /concessionaria or /concessionaria.json
  def create
    @concessionarium = Concessionarium.new(concessionarium_params)

    respond_to do |format|
      if @concessionarium.save
        format.html { redirect_to @concessionarium, notice: "Concessionarium was successfully created." }
        format.json { render :show, status: :created, location: @concessionarium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @concessionarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concessionaria/1 or /concessionaria/1.json
  def update
    respond_to do |format|
      if @concessionarium.update(concessionarium_params)
        format.html { redirect_to @concessionarium, notice: "Concessionarium was successfully updated." }
        format.json { render :show, status: :ok, location: @concessionarium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @concessionarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concessionaria/1 or /concessionaria/1.json
  def destroy
    @concessionarium.destroy
    respond_to do |format|
      format.html { redirect_to concessionaria_url, notice: "Concessionarium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concessionarium
      @concessionarium = Concessionarium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def concessionarium_params
      params.require(:concessionarium).permit(:nome, :cidade, :endereco, :anos_de_mercado)
    end
end
