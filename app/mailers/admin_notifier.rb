class AdminNotifier < ApplicationMailer
	 default from: "BrandField Agency<admin@therailsshop.club>"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_notifier.contact_form.subject
  #
  def contact_form contact
    @message = message

     mail from: @message.email, subject: @message.name, body: @message.message
  end
end
