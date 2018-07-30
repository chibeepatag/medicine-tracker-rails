class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all   
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    get_chart_data
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to patients_path, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patient_path(@patient), notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:urn, :name)
    end

    def get_chart_data
      @chart_data = []
      
      @patient.medicines.each do |medicine|
        @chart_data << [medicine.antibiotic, medicine.start_date.strftime("%Y-%m-%d"), medicine.end_date.strftime("%Y-%m-%d")]
      end
      
      
      @patient.events.each do |event|
        @chart_data << [event.reaction, event.event_date.strftime("%Y-%m-%d"), event.event_date.strftime("%Y-%m-%d")]
      end
    end
end
