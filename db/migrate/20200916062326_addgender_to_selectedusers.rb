class AddgenderToSelectedusers < ActiveRecord::Migration[6.0]
  def change
    add_column :selectedusers, :gender, :integer
  end
end
