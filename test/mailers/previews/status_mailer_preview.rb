# Preview all emails at http://localhost:3000/rails/mailers/status_mailer
class StatusMailerPreview < ActionMailer::Preview
def status_email
    StatusMailer.status_email(ActionEntry.first)
  end
end
