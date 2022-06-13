class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.integer :client_id, null: false, foreign_key: true
      t.integer :gym_id, null: false, foreign_key: true
      t.integer :charge

      t.timestamps
    end
  end
end
