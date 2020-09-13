class RenameSelectedusersIdColumnToMatchings < ActiveRecord::Migration[6.0]
  def change
    rename_column :matchings, :selectedusers_id, :selecteduser_id
  end
end
