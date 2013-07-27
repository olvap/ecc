class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :address
      t.string :phone
      t.string :cel_phone
      t.string :email
      t.string :church
      t.text :health_obs
      t.string :name

      t.timestamps
    end
  end
end
