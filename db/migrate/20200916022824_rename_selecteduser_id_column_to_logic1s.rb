class RenameSelecteduserIdColumnToLogic1s < ActiveRecord::Migration[6.0]
  def change
    rename_column :logic1s, :selecteduser_id, :user_id
  end
end
