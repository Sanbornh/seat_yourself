class RemoveReservationIdFromRestaurant < ActiveRecord::Migration
  def change
  	remove_column :restaurants, :reservation_id
  end
end
