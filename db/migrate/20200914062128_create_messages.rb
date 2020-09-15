class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :message
      t.references :user, null: false, foreign_key: true
      t.references :selecteduser, null: false, fpreign_key: true
      t.references :room, null: false, foreign_key: true
      t.timestamps 
    end
  end
end
