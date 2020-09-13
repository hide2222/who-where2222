class AddSelecteduserIdToMatching < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :matchings, :users
  end
end
