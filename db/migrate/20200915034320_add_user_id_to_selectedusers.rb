class AddUserIdToSelectedusers < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :selectedusers, :users
  end
end
