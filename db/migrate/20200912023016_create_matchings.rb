class CreateMatchings < ActiveRecord::Migration[6.0]
  def change
    create_table :matchings do |t|
      t.references :user, type::bigint, null: false, foreign_key: true
      t.references :selected_user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
