class RenameGenderColumnToSelectedusers < ActiveRecord::Migration[6.0]
  def change
    rename_column :selectedusers, :gender, :gender_id
  end
end
