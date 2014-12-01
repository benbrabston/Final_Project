class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :student_id
      t.integer :question_id
      t.string :qanswer_integer

      t.timestamps

    end
  end
end
