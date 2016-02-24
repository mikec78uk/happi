class EmailsController < ApplicationController

layout 'coupon'

def index
end

def show

end

def new
	# Create an empty email
	@email = Email.new

	# Count the number of remaining coupons
	@coupon_count = Coupon.where('assigned = ? OR assigned IS ?', false, nil).count
end

def create
	@email = Email.new(email_params)
	# Find a coupon
	@couponarray = Coupon.where('assigned = ? OR assigned IS ?', false, nil).to_a
	@coupon = @couponarray.sample
	# Assign the coupon to the email
	@email.coupon_id = @coupon.id

	# Sets the coupon_sent field to true
	@email.coupon_sent = true

	if @email.save
		#Need to send whole record through not just the id to create harder to hack urls
		@this_coupon = Coupon.find(@email.coupon_id)
		
		# Send coupon email
		CouponMailer.send_coupon(@email).deliver



		# Display Coupon view page
		redirect_to coupon_path(@this_coupon)
	else
		@coupon_count = Coupon.where('assigned = ? OR assigned IS ?', false, nil).count
		render "new"
	end


end

def edit
end

def update
end

def destroy
end


def email_params
		params.require(:email).permit(:email)
end

end
