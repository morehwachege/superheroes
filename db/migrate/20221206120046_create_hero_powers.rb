class CreateHeroPowers < ActiveRecord::Migration[6.1]
  def change
    create_table :hero_powers do |t|
      t.string :strength
      t.integer :hero_id
      t.integer :power_id

      t.timestamps
    end
  end
end
