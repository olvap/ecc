class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :address
      t.string :phone
      t.string :cel_phone
      t.string :email
      t.string :church
      t.string :couple
      t.text :health_obs
      t.integer :children
      t.string :name
      t.string :full_name

      t.timestamps
    end
  end
end
