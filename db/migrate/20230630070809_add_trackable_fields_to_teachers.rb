class AddTrackableFieldsToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :sign_in_count, :integer
    add_column :teachers, :current_sign_in_at, :datetime
    add_column :teachers, :last_sign_in_at, :datetime
    add_column :teachers, :current_sign_in_ip, :string
    add_column :teachers, :last_sign_in_ip, :string
  end
end
