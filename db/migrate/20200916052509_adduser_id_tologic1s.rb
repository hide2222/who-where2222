class AdduserIdTologic1s < ActiveRecord::Migration[6.0]
  def change
    change_column :logic1s, :user_id, :bigint
    add_foreign_key :logic1s, :users
  end
end
