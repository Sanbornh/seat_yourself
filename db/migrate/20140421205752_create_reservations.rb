class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :time
      t.integer :party_size
      t.integer :user_id

      t.timestamps
    end
  end
end
