class MedicinesController < ApplicationController
  before_action :set_patient
  before_action :set_medicine, only: [:show, :edit, :update, :destroy]

  # GET /medicines
  # GET /medicines.json
  def index
    @medicines = @patient.medicines
  end

  # GET /medicines/1
  # GET /medicines/1.json
  def show
  end

  # GET /medicines/new
  def new
    @medicine = @patient.medicines.new
  end

  # GET /medicines/1/edit
  def edit
  end

  # POST /medicines
  # POST /medicines.json
  def create
    @medicine = @patient.medicines.new(medicine_params)

    respond_to do |format|
      if @medicine.save
        format.html { redirect_to patient_path(@patient), notice: 'Medicine was successfully created.' }
        format.json { render :show, status: :created, location: @medicine }
      else
        format.html { render :new }
        format.json { render json: @medicine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicines/1
  # PATCH/PUT /medicines/1.json
  def update
    respond_to do |format|
      if @medicine.update(medicine_params)
        format.html { redirect_to patient_path(@patient), notice: 'Medicine was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicine }
      else
        format.html { render :edit }
        format.json { render json: @medicine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicines/1
  # DELETE /medicines/1.json
  def destroy
    @medicine.destroy
    respond_to do |format|
      format.html { redirect_to patient_path(@patient), notice: 'Medicine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_patient
      @patient = Patient.find(params[:patient_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_medicine
      @medicine = Medicine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medicine_params
      params.require(:medicine).permit(:medicine_class, :antibiotic, :dose, :frequency, :route, :start_date, :end_date)
    end
end
