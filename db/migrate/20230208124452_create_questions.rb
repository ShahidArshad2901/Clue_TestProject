class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :question_id
      t.string :yes_answer
      t.string :yes_context
      t.string :yes_question_id
      t.string :no_answer
      t.string :no_context
      t.string :no_question_id

      t.timestamps
    end
  end
end
