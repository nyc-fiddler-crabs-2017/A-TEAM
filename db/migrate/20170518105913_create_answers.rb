class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :text, null: false
      t.references :question, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
