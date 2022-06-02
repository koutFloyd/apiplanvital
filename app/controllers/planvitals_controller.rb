class PlanvitalsController < ApplicationController
  before_action :set_planvital, only: %i[ show edit update destroy ]

  # GET /planvitals or /planvitals.json
  def index
    #@planvitals = Planvital.all
    
    #@planvitals = RestClient.get 'https://api2.planvital.cl/public/financial-indicators/quota-values?startDate=2022-01-01&endDate=2022-12-30'
    
    response = RestClient::Request.new(
      :method => :get,
      :url => "https://api2.planvital.cl/public/financial-indicators/quota-values?startDate=2022-05-17&endDate=2022-06-30",
      :verify_ssl => false
    ).execute
    @planvitals = JSON.parse(response.to_str)


  end

  # GET /planvitals/1 or /planvitals/1.json
  def show
  end

  # GET /planvitals/new
  def new
    @planvital = Planvital.new
  end

  # GET /planvitals/1/edit
  def edit
  end

  # POST /planvitals or /planvitals.json
  def create
    @planvital = Planvital.new(planvital_params)

    respond_to do |format|
      if @planvital.save
        format.html { redirect_to planvital_url(@planvital), notice: "Planvital was successfully created." }
        format.json { render :show, status: :created, location: @planvital }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @planvital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planvitals/1 or /planvitals/1.json
  def update
    respond_to do |format|
      if @planvital.update(planvital_params)
        format.html { redirect_to planvital_url(@planvital), notice: "Planvital was successfully updated." }
        format.json { render :show, status: :ok, location: @planvital }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @planvital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planvitals/1 or /planvitals/1.json
  def destroy
    @planvital.destroy

    respond_to do |format|
      format.html { redirect_to planvitals_url, notice: "Planvital was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planvital
      @planvital = Planvital.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def planvital_params
      params.require(:planvital).permit(:date, :fundA, :fundC, :fundE)
    end
end
