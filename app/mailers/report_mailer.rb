class ReportMailer < ApplicationMailer
	def send_report
		email = params[:email]
		@patient = Patient.find params[:patient_id]

		mail(to: email, subject: "Medicine Reaction of #{@patient.name}")
	end
end
