class CreateDetailCounters < ActiveRecord::Migration[6.1]
  def change
    create_table :detail_counters do |t|
      t.string :ID_Device
      t.integer :count

      t.timestamps
    end
  end
end
