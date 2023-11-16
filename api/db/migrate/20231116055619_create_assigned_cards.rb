class CreateAssignedCards < ActiveRecord::Migration[7.0]
  def change
    create_table :assigned_cards do |t|
      t.references :card, null: false, foreign_key: true
      t.json :assigned_users

      t.timestamps
    end
  end
end
