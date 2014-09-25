class CouponMailer < ActionMailer::Base
  default from: "no-reply@veryhappi.com"
  
  
  
  def send_coupon(email)
  	@email = email
  
  	mail to: @email.email, subject: "Your Amazon Voucher for JavaScipt Fridge Magnets"  
  end
  
 # def test_complete(test)
 # 	@test = test
  	
#  	@user = @test.user  
  
#  	mail to: @user.email, subject: "Your final mojoleaf results are ready"
#  end  
  
  
end
