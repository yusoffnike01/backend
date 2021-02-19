class CreateCounters < ActiveRecord::Migration[6.1]
  def change
    create_table :counters do |t|
      t.string :ID_Device
      t.string :location
      t.string :role_id

      t.timestamps
    end
  end
end
