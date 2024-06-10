class AddColumnsToTeacher < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :full_name, :string
    add_column :teachers, :contact_number, :string
    add_column :teachers, :subject, :string
  end
end
