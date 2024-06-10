class AddColumnsToStudent < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :full_name, :string
    add_column :students, :contact_number, :string
    add_column :students, :parent_name, :string
  end
end
