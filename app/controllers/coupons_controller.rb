class CouponsController < ApplicationController

layout 'coupon'


def index
end

def show
	# Needs to show the coupon
	@coupon = Coupon.find(params[:id])
	# Find the coupon associated with the submited email
	# Display that coupon code
end

def new
end

def create
end

def edit
end

def update
end

def destroy
end


end
