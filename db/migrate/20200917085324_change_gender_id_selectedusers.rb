class ChangeGenderIdSelectedusers < ActiveRecord::Migration[6.0]
  def change
    change_column :selectedusers, :gender_id, :integer
  end
end
