class CreateInformationCounters < ActiveRecord::Migration[6.1]
  def change
    create_table :information_counters do |t|
      t.integer :level_count
      t.string :details

      t.timestamps
    end
  end
end
