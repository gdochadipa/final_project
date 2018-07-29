class DispositonsController < ApplicationController
  before_action :set_dispositon, only: [:show, :edit, :update, :destroy]

  # GET /dispositons
  # GET /dispositons.json
  def index
    @dispositons = Dispositon.all
  end

  # GET /dispositons/1
  # GET /dispositons/1.json
  def show
  end

  # GET /dispositons/new
  def new
    @dispositon = Dispositon.new
  end

  # GET /dispositons/1/edit
  def edit
  end

  # POST /dispositons
  # POST /dispositons.json
  def create
    @dispositon = Dispositon.new(dispositon_params)

    respond_to do |format|
      if @dispositon.save
        format.html { redirect_to @dispositon, notice: 'Dispositon was successfully created.' }
        format.json { render :show, status: :created, location: @dispositon }
      else
        format.html { render :new }
        format.json { render json: @dispositon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dispositons/1
  # PATCH/PUT /dispositons/1.json
  def update
    respond_to do |format|
      if @dispositon.update(dispositon_params)
        format.html { redirect_to @dispositon, notice: 'Dispositon was successfully updated.' }
        format.json { render :show, status: :ok, location: @dispositon }
      else
        format.html { render :edit }
        format.json { render json: @dispositon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispositons/1
  # DELETE /dispositons/1.json
  def destroy
    @dispositon.destroy
    respond_to do |format|
      format.html { redirect_to dispositons_url, notice: 'Dispositon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispositon
      @dispositon = Dispositon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dispositon_params
      params.require(:dispositon).permit(:dispocode, :inmail_id, :to, :comment, :status, :user_id)
    end
end
