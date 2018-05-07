class ReportController < ApplicationController
  before_action :set_patient

  def email
  	@email = patient_params[:email]

  	ReportMailer.with(patient_id: patient_params[:patient_id], email: @email).send_report.deliver_now
  end

  private
	  def set_patient
	      @patient = Patient.find(patient_params[:patient_id])
	  end

	  def patient_params
      params.permit(:email, :patient_id)
    end

end
