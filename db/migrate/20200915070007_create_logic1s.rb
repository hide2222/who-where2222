class CreateLogic1s < ActiveRecord::Migration[6.0]
  def change
    create_table :logic1s do |t|
      t.integer :logic_result_id, null: false
      t.timestamps
    end
  end
end
