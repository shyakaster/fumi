class Contact < MailForm::Base
	attribute :name, validate: true
	attribute :email, validate: true, email: true
	attribute :message, validate: true
	attribute :nickname, captcha: true

	def headers
		{
			:subject => "Glamour Contact Form",
			:to => "ken@glamourtechnology.com",
			:from => %("#{name}" <#{email}>)

		}

	end
    
end
