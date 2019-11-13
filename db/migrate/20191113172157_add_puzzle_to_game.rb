class AddPuzzleToGame < ActiveRecord::Migration[6.0]
  def change
    add_reference :games, :puzzle, null: false, foreign_key: true
  end
end
