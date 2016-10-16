module Admin
  class ArticlesController < ApplicationController
    layout 'admin'

    def index
      @articles = Article.all
    end

    def new
      @article = Article.new
    end

    def edit
      @article = Article.find params.fetch(:id)
    end

    def create
    end

    def update
    end
  end
end