class AddSelecteduserIdToLogic1s < ActiveRecord::Migration[6.0]
  def change
    add_column :logic1s, :selecteduser_id, :string
  end
end
