class ReportController < ApplicationController
  before_action :set_patient
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  def email
  	@email = patient_params[:email]

  	ReportMailer.with(patient_id: patient_params[:patient_id], email: @email).send_report.deliver_now
  end

  def sendEmailFromApp
      @email = patient_params[:email]

      #send email logic here, return json with "message". The message will be shown in the app.
      #example: if (success) { message = successfull message } else { message = error message }

      render json: {"message": "Not yet implemented.\n\nSample message: Report for " + @patient.name + " was successfully sent to " + @email + "."}
  end

  private
	  def set_patient
	      @patient = Patient.find(patient_params[:patient_id])
	  end

	  def patient_params
      params.permit(:email, :patient_id)
    end

end
