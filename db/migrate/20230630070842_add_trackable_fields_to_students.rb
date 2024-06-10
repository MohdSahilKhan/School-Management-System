class AddTrackableFieldsToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :sign_in_count, :integer
    add_column :students, :current_sign_in_at, :datetime
    add_column :students, :last_sign_in_at, :datetime
    add_column :students, :current_sign_in_ip, :string
    add_column :students, :last_sign_in_ip, :string
  end
end
