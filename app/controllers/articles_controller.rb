class ArticlesController < ApplicationController
    def index
        @articles = Article.all
        @external_articles = NewsFeedService.get_feed('all', 'cnn', 'http://us.cnn.com', 15) 
    end
    
    def show
        @article = Article.find(params[:id])
        @author = User.find_by(id: @article.user_id)
    end
end
