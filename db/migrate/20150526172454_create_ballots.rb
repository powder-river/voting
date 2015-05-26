class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.integer :voter_id
      t.integer :candidate_id

      t.timestamps null: false
    end
  end
end
