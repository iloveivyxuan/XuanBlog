class AddBannerToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :banner, :string
    add_column :articles, :time, :string
  end
end
