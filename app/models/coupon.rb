class Coupon < ActiveRecord::Base

	has_one :email 


	def to_param
		"#{id}-#{coupon_code}"
	end


end
