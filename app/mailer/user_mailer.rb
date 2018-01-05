class UserMailer < ActionMailer::Base
  default from: "info@hexagonfab.com"

  def test_mail
     @subject = "Test"
     mail(to: "rw520@cam.ac.uk", subject: @subject)
  end

  def confirmation_mail(contact)
    @contact=contact
    mail(to: @contact.email, subject: "Your request at HexagonFab.com")
  end

  def request_mail(contact)
    @contact=contact
    mail(to: "rw520@cam.ac.uk", subject: "Contact-form hexagonfab.com - User: " + @contact.name)
  end
end
