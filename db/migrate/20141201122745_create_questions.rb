class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text
      t.integer :school_id
      t.integer :school_question_id


      t.timestamps

    end
  end
end
