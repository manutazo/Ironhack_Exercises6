class CreateConects < ActiveRecord::Migration
  def change
    create_table :conects do |t|
      t.references :user, index: true
      t.references :barbecue, index: true
      t.datetime :appointment_date


      t.timestamps null: false
    end
  end
end
