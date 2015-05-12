class AddGradesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :grade, :float
  end
end
