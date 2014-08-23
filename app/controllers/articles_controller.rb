class ArticlesController < ApplicationController

  #before_action :signed_in_user

  def new
  end

  def create
    @article = current_user.articles.build(article_params)
   
    @article.save
    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
