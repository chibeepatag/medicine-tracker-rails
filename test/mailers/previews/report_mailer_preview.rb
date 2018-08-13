# Preview all emails at http://localhost:3000/rails/mailers/report_mailer
class ReportMailerPreview < ActionMailer::Preview
	def send_report
		params = {patient_id: 1, email: 'chibeepatag@yahoo.com'}
		
		ReportMailer.with(params).send_report
	end
end
