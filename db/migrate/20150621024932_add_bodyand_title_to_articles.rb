class AddBodyandTitleToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :title, :string
    add_column :articles, :body, :string
  end
end
