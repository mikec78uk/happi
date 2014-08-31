class AddCouponFields < ActiveRecord::Migration
  def change

  	add_column :coupons, :coupon_code, :string
  	add_column :coupons, :assigned, :boolean
  

  end
end
