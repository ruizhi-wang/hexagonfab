class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.deliver

      # #send request email when deliver is clicked
      # UserMailer.request_mail(@contact).deliver

      # Request mail is now sent automatically by Mailform gem

      #send confirmation email when deliver is clicked
      UserMailer.confirmation_mail(@contact).deliver

      flash.now[:success] = 'Your message has been successfully sent!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

end
