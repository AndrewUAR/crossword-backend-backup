class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :user, null: false, foreign_key: true
      
      t.string :guesses, array: true, default: []
      t.boolean :opened, default: false

      t.timestamps
    end
  end
end
