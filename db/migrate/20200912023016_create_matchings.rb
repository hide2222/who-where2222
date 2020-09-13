class CreateMatchings < ActiveRecord::Migration[6.0]
  def change
    create_table :matchings do |t|
      t.bigint :user_id, null: false
      t.references :selectedusers, null: false, foreign_key: true
      t.timestamps
    end
  end
end
