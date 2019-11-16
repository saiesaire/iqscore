class AddQuestionWrapperToTests < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :question_wrapper, :text
  end
end
