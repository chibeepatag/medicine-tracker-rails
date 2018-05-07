class ApplicationMailer < ActionMailer::Base
  default from: Rails.configuration.email_sender
  layout 'mailer'
end
