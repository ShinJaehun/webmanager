class ChangeMembers < ActiveRecord::Migration[6.0]
  def change
    remove_column :members, :user_id
    remove_column :members, :team_id
    add_reference :members, :user, foreign_key: true
    add_reference :members, :team, foreign_key: true
  end
end
