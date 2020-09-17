class ChangeDataUserIdToLogic1s < ActiveRecord::Migration[6.0]
  def change
    change_column :logic1s, :user_id, :bigint
  end
end
