class ArticlesController < ApplicationController
  #execute this before certain methods
  before_action :set_article, only: [:edit, :update, :show, :destroy]
  
  
  
  def index
    #get all articles
    @articles = Article.all


  end
  
  def new
    @article = Article.new

  end

  def create
    #show the information
    #render plain: params[:article].inspect 
    #save only if validations are met, else display an error message
    @article = Article.new(article_params)
    @article.user = User.first
    if @article.save
      flash[:success] = "Article was successfully created!"
      redirect_to article_path(@article)
    else
        #call new again
        render 'new'
        
    end
    #redirect to show page articles#path
    
  end
  

  def edit
    #find article and send it to edit.html.erb
    

  end

  def update
    #find article and update
    

    if @article.update(article_params)
        flash[:success] = "Article was successfully updated"
        redirect_to article_path(@article)
    else
        render 'edit'
    end
  end



  def show
    #find the article based on the ID
    #create a template to show the article
    
  end


  def destroy
    
    #delete
    @article.destroy
    flash[:success] = "Article was successfully deleted"
    redirect_to articles_path
  end



  private
    def set_article
        @article = Article.find(params[:id])
    end


    def article_params
      # get the title and description
      params.require(:article).permit(:title, :description)
    end
  
end