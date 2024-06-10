class AddColumnsToAdmin < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :full_name, :string
    add_column :admins, :contact_number, :string
  end
end
