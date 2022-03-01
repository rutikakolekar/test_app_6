class ArticlesController < ApplicationController

    def show 
        # @ will convert regular article variable to instance variable
        @article=Article.find(params[:id])  #:id will have value of id in URL

    end
end

