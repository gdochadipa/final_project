class InmailsController < ApplicationController
  before_action :set_inmail, only: [:show, :edit, :update, :destroy]

  # GET /inmails
  # GET /inmails.json
  def index
    @inmails = Inmail.all
  end

  # GET /inmails/1
  # GET /inmails/1.json
  def show
  end

  # GET /inmails/new
  def new
    @inmail = Inmail.new
  end

  # GET /inmails/1/edit
  def edit
  end

  # POST /inmails
  # POST /inmails.json
  def create
    @inmail = Inmail.new(inmail_params)

    respond_to do |format|
      if @inmail.save
        format.html { redirect_to @inmail, notice: 'Inmail was successfully created.' }
        format.json { render :show, status: :created, location: @inmail }
      else
        format.html { render :new }
        format.json { render json: @inmail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inmails/1
  # PATCH/PUT /inmails/1.json
  def update
    respond_to do |format|
      if @inmail.update(inmail_params)
        format.html { redirect_to @inmail, notice: 'Inmail was successfully updated.' }
        format.json { render :show, status: :ok, location: @inmail }
      else
        format.html { render :edit }
        format.json { render json: @inmail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inmails/1
  # DELETE /inmails/1.json
  def destroy
    @inmail.destroy
    respond_to do |format|
      format.html { redirect_to inmails_url, notice: 'Inmail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inmail
      @inmail = Inmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inmail_params
      params.require(:inmail).permit(:title, :from, :to, :datecoming, :mailtext, :response, :dispo_id)
    end
end
