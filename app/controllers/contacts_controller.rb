class ContactsController < ApplicationController

  def home
     @message=ContactForm.new
  end
  def new
     @message=ContactForm.new
  end

  def create
  	@message = ContactForm.new(contact_params)
    # @message.request=request
     if @message.valid?
      AdminNotifier.contact_form(@message).deliver_now
        @message.save
  	     return redirect_to thanks_path, notice: "Thanks for the message"
       else
        redirect_to thanks_path, notice: "Message was not delivered for some reason"
       end
  end

  def thanks
  end
  private
  def contact_params
  	params.require(:contact_form).permit(:name,:email, :message, :telephone)
  end
end
