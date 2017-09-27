class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def send_email(user)
    email_body = user.name + ' ' + user.email + ' ' + user.about
    mail(to: 'kaalm1@gmail.com',
         from: user.email,
         body: email_body,
         content_type: "text/html",
         subject: "Contact Form From Website")
  end
end
