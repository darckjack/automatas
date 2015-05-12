class AddTeachersToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :teacher, :string
  end
end
