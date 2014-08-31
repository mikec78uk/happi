class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
    	t.string :email
    	t.integer :coupon_id
    	t.boolean :coupon_sent
    	t.boolean :review_request_sent

      t.timestamps
    end
  end
end
