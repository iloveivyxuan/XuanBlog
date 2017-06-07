class AddSubtitleToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :subtitle, :string
    add_column :articles, :pre_content, :string
  end
end
