class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string  :total
      t.references :user, foreign_key: true
      t.integer :voteable_id, null: false
      t.string  :voteable_type, null: false

     t.timestamps null: false
   end
  end
end
