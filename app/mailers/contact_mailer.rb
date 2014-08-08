class ContactMailer < ActionMailer::Base
  #default from: "no-reply@happi-express.co.uk"


  def contact_request(contact)

  	@contact = contact

  	mail to: "clarke.michael.j@gmail.com", from: @contact.email, subject: "Message from from Happi website" 

  end



end
