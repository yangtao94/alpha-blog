class ArticlesController < ApplicationController
  def new
    @article = Article.new

  end

  def create
    #show the information
    #render plain: params[:article].inspect 
    #save
    @article = Article.new(article_params)
    @article save 
    #redirect to show page articles#show
    redirect_to articles_show(@article)

  end

  private
    def article_params
      # get the title and description
      params.require(:article).permit(:title, :description)
    end
end