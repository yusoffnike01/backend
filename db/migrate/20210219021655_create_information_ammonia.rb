class CreateInformationAmmonia < ActiveRecord::Migration[6.1]
  def change
    create_table :information_ammonia do |t|
      t.integer :level_ammonia
      t.string :details

      t.timestamps
    end
  end
end
