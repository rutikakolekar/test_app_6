class ArticlesController < ApplicationController

    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def show 
        # @ will convert regular article variable to instance variable
        #@article = Article.find(params[:id])  #:id will have value of id in URL         
    end

    def index
        @articles = Article.all
    end

    def new 
        @article=Article.new
    end

    def create     
        @article=Article.new(set_params)
        if @article.save
            flash[:notice]="Article was created successfully."
            redirect_to @article   
        else
            render "new"   
       end
    end

    def edit
        #@article = Article.find(params[:id])
    end

    def update
        #@article = Article.find(params[:id])
        if @article.update(set_params)
          flash[:notice] = "Article was updated successfully."
          redirect_to @article
        else
          render 'edit'
        end
    end

    def destroy 
       # @article=Article.find(params[:id])
        if @article.destroy
            redirect_to articles_path
        else
            redirect_to articles_path
    end
end

    private 

    def set_article
        @article = Article.find(params[:id])
    end

    def set_params
        params.require(:article).permit(:title, :description)
    end

end

