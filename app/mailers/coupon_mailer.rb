class CouponMailer < ActionMailer::Base
  default 	from: "no-reply@veryhappi.com",
  			reply_to: "mikefromhappi@gmail.com"
  
  
  
  def send_coupon(email)
  	@email = email
  
  	mail to: @email.email, subject: "Your Amazon Voucher for JavaScipt Fridge Magnets"  
  end
  

  def review_request_email(email)
  	@email = email
  
  	mail to: @email.email, subject: "How were the JavaScipt Fridge Magnets?"
  end



  
end
