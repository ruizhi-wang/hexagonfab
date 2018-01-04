class UserMailer < ActionMailer::Base
  default from: "ruizhiwang90@gmail.com"

  def test_mail
     @subject = "Test"
     mail(to: "rw520@cam.ac.uk", subject: @subject)
  end

  def request_mail(contact)
    @contact=contact
    mail(to: "rw520@cam.ac.uk", subject: "Message from contact of hexagonfab.com" + @contact.name)
  end
end
