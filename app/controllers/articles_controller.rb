class ArticlesController < ApplicationController
  def new
    @article = Article.new

  end

  def create
    #show the information
    #render plain: params[:article].inspect 
    #save only if validations are met, else display an error message
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created!"
      redirect_to article_path(@article)
    else
        #call new again
        render 'new'
        
    end
    #redirect to show page articles#path
    
  end


  def show
    #find the article based on the ID
    #create a template to show the article
    @article = Article.find(params[:id])
  end
  private
    def article_params
      # get the title and description
      params.require(:article).permit(:title, :description)
    end
  
end