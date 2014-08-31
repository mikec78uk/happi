class Email < ActiveRecord::Base

	belongs_to :coupon

	before_validation :downcase_email

	# Assigns a coupon to the entered email
	after_save :assign_coupon

	# Validates presence of email
	validates :email, presence: true, uniqueness: {message: "It looks like you've already requested your Amazon Coupon"}


	def assign_coupon
		
		# get the coupon assigne to the email
		coupon = Coupon.find(self.coupon_id)

		# Set coupon » assigned to true
		self.coupon.update_attributes(:assigned => true)
	end

	def downcase_email
		# Ensure all email addresses are dowwncase before saving, don't want the same email with upcase and downcase; cheat the system
		self.email = self.email.downcase if self.email.present?
	end


end
