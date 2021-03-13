class AddTitleToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :title, :string, limit: 50
    add_column :posts, :body, :text 
  end
end
