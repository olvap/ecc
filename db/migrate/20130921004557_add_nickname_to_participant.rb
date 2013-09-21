class AddNicknameToParticipant < ActiveRecord::Migration
  def change
    add_column :participants, :nickname, :string
  end
end
