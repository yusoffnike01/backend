class CreateAmmonia < ActiveRecord::Migration[6.1]
  def change
    create_table :ammonia do |t|
      t.integer :role_id
      t.string :ID_device
      t.string :location

      t.timestamps
    end
  end
end
