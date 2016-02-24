task completed_check: :environment do
	
	# Find Emails where coupon sent is true but review chase is false
	@email = Email.where('review_request_sent = ? OR review_request_sent IS ?', false, nil)

		@email.each do |email|

			# Send follow up email
			CouponMailer.review_request_email(email).deliver

			# Update table to say follow up has been sent
			email.update_columns(review_request_sent: true)
		end
end