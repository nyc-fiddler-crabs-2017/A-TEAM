class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user, foreign_key: true, null: false
      t.integer :voteable_id, null: false
      t.string  :voteable_type, null: false
      t.integer :value, null: false

     t.timestamps null: false
   end
  end
end
