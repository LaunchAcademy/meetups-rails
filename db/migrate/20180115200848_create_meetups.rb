class CreateMeetups < ActiveRecord::Migration[5.1]
  def change
    create_table :meetups do |t|
      t.string :name, null: false
      t.text :description
      t.string :city, null: false
      t.string :state, null: false
      t.timestamps
    end
  end
end
