class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.text     :question
      t.string   :select1
      t.string   :select2
      t.string   :select3
      t.string   :select4
      t.string   :answer
      t.integer  :score
      t.timestamps
    end
  end
end
