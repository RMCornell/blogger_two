class ArticlesController < ApplicationController
  include ArticlesHelper
  #defines the index view and the data that is being sent to the index view.  Here we have said that the index view will have the instance variable for @articles and that variable will send all Articles to the view when called within erb tags (embedded ruby)

  def index
    @articles = Article.all
  end

  #defines the show view and the data that is being sent to the show view.  Here we will say that the show view will have the instance variable for @article and that variable will return the article selected from the index with the article id coming in from the params

  def show
    @article = Article.find(params[:id])
  end

  #defines the new view and the data that is being sent to the new view.  Here we will say that the new view will have an instance variable for @article and that variable will allow a new article to be created in the database.

  def new
    @article = Article.new
  end

  #defines the create action and the data that is being sent.  This is a POST action to the database from the browser params.  These params come from the params hash that is created when you click submit on the form that is submitted.  To create a new article, pull the params out and save.

  def create
    @article = Article.new(article_params)
    @article.save

    flash.notice = "Article Created!"

    redirect_to article_path(@article)
  end

  #defines the destroy action.  This is a delete from database.

  def destroy
    @article = Article.delete(params[:id])

    flash.notice = "Article Destroyed!"

    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "Article Updated"

    redirect_to article_path(@article)
  end
end
