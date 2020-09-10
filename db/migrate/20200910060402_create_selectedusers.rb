class CreateSelectedusers < ActiveRecord::Migration[6.0]
  def change
    create_table :selectedusers do |t|
      t.references :user,          null: false
      t.references :logic_result,  null: false
      t.timestamps
    end
  end
end
