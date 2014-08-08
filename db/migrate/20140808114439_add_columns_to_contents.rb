class AddColumnsToContents < ActiveRecord::Migration
  def change
  	add_column :contents, :name, :string
  	add_column :contents, :email, :string
  	add_column :contents, :message, :text
  end
end
