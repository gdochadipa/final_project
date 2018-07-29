class DispocodesController < ApplicationController
  before_action :set_dispocode, only: [:show, :edit, :update, :destroy]

  # GET /dispocodes
  # GET /dispocodes.json
  def index
    @dispocodes = Dispocode.all
  end

  # GET /dispocodes/1
  # GET /dispocodes/1.json
  def show
  end

  # GET /dispocodes/new
  def new
    @dispocode = Dispocode.new
  end

  # GET /dispocodes/1/edit
  def edit
  end

  # POST /dispocodes
  # POST /dispocodes.json
  def create
    @dispocode = Dispocode.new(dispocode_params)

    respond_to do |format|
      if @dispocode.save
        format.html { redirect_to @dispocode, notice: 'Dispocode was successfully created.' }
        format.json { render :show, status: :created, location: @dispocode }
      else
        format.html { render :new }
        format.json { render json: @dispocode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dispocodes/1
  # PATCH/PUT /dispocodes/1.json
  def update
    respond_to do |format|
      if @dispocode.update(dispocode_params)
        format.html { redirect_to @dispocode, notice: 'Dispocode was successfully updated.' }
        format.json { render :show, status: :ok, location: @dispocode }
      else
        format.html { render :edit }
        format.json { render json: @dispocode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispocodes/1
  # DELETE /dispocodes/1.json
  def destroy
    @dispocode.destroy
    respond_to do |format|
      format.html { redirect_to dispocodes_url, notice: 'Dispocode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispocode
      @dispocode = Dispocode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dispocode_params
      params.require(:dispocode).permit(:dispo_title)
    end
end
