class AddPaperclipFieldsToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :image_file_name,     :string
    add_column :articles, :image_content_type,  :string
    add_column :articles, :image_file_size,     :integer
    add_column :articles, :image_updated_at,     :datetime
  end
  
  def self.down
    remove.column :articles,  :image_file_name
    remove.column :articles,  :image_content_type
    remove.column :articles,  :image_file_size
    remove.column :articles,  :image_updated_at
  end
end
