class ArticlesController < ApplicationController
  #defines the index view and the data that is being sent to the index view.  Here we have said that the index view will have the instance variable for @articles and that variable will send all Articles to the view when called within erb tags (embedded ruby)

  def index
    @articles = Article.all
  end

  #defines the show view and the data that is being sent to the show view.  Here we will say that the show view will have the instance variable for @article and that variable will return the article selected from the index with the article id coming in from the params

  def show
    @article = Article.find(params[:id])
  end
end
