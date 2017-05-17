class AddTimestampToOrders < ActiveRecord::Migration[5.0]
  def change
  	add_timestamps(:orders, null: true)
  end
end
